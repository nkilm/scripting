#! /usr/bin/bash

# echo "command line args $1 $2"

# $0 --> file name

# all the command line args are stored in $@
# echo $@

# storing all command line args inside a user defined array 

arr=("$@") # don't give any space before/after = for eg arr = ("$@")

echo "First arg: ${arr[0]}, Second arg: ${arr[1]}"