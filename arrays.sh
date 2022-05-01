#! /usr/bin/bash

arr=("Nikhil" "Suraj" "Manthan" "Bablu")

# @ or * 
echo ${arr[@]}
echo ${arr[*]}
echo ${arr[0]}
echo ${arr[@]:2} # start printing from index 2
echo "Array indices ${!arr[@]}"
echo "Length of the array is ${#arr[@]}"


# insertion 
arr[4]="Omkar"
echo ${arr[@]}

# deletion 
unset arr[4]
echo ${arr[@]}