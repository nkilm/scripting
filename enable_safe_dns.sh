#!/bin/bash

: <<'DESCRIPTION'

Description:
This Bash script configures DNS settings on a Linux system using resolvconf and Cloudflare's 1.1.1.1 DNS service to block malware and adult content.

Reference: https://developers.cloudflare.com/1.1.1.1/setup/linux/
DESCRIPTION


# Check for superuser privileges
if [ "$EUID" -ne 0 ]; then
  printf "Please run this script with superuser privileges (sudo)."
  exit 1
fi

# Check if resolvconf is installed
if ! dpkg -l | grep -q resolvconf; then
  sudo apt install resolvconf
fi

# DNS addresses - https://developers.cloudflare.com/1.1.1.1/setup/linux/
IPv4_DNS1="1.1.1.3"
IPv4_DNS2="1.0.0.3"
IPv6_DNS1="2606:4700:4700::1113"
IPv6_DNS2="2606:4700:4700::1003"

if ! sudo systemctl is-active --quiet resolvconf.service; then
  sudo systemctl start resolvconf.service
  sudo systemctl enable resolvconf.service
fi

if ! grep -qF "nameserver $IPv4_DNS1" /etc/resolvconf/resolv.conf.d/head; then
  echo "nameserver $IPv4_DNS1" | sudo tee -a /etc/resolvconf/resolv.conf.d/head
  echo "nameserver $IPv4_DNS2" | sudo tee -a /etc/resolvconf/resolv.conf.d/head
fi

sudo resolvconf --enable-updates
sudo resolvconf -u

sudo systemctl restart resolvconf.service
sudo systemctl restart systemd-resolved.service

# Check DNS configuration
printf "Done!\n\nTo verify changes - resolvectl status\n"
printf "Reference - https://developers.cloudflare.com/1.1.1.1/setup/linux/\n"
