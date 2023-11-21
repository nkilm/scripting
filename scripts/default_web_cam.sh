#!/bin/bash

# Path to the udev rules file
udev_rules_file="/etc/udev/rules.d/40-disable-internal-webcam.rules"

# Webcam details
idVendor="0c45"
idProduct="671e"

disable_webcam() {
    echo "Disabling the internal webcam..."
    echo "ATTRS{idVendor}==\"$idVendor\", ATTRS{idProduct}==\"$idProduct\", RUN=\"/bin/sh -c 'echo 0 >/sys/\$devpath/authorized'\"" | sudo tee "$udev_rules_file" > /dev/null
    sudo udevadm control --reload-rules
    echo "Webcam disabled. Reboot your system to apply the changes."
}

enable_webcam() {
    echo "Enabling the internal webcam..."
    sudo rm -f "$udev_rules_file"
    sudo udevadm control --reload-rules
    echo "Webcam enabled. Reboot your system to apply the changes."
}

# Check for the script arguments
case "$1" in
    "disable")
        disable_webcam
        ;;
    "enable")
        enable_webcam
        ;;
    *)
        echo "Usage: $0 {disable|enable}"
        exit 1
        ;;
esac

exit 0
