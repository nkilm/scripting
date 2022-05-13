#! /usr/bin/bash

# read -p "Enter the file name: " file_name
# file_name="sample.txt"
file_name=$1

n=1
while read line; do
# reading each line
echo -e "$n: $line"
n=$(( n+1 ))
done < $file_name