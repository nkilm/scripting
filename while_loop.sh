#! /usr/bin/bash


<<basic_structure

while [ condition ]
do
    statemen1
    statemen2
    statemen3
    ...
done 

basic_structure

# n=1
# while [ $n -le 10 ]
# do 
#     echo "$n"
#     n=$(( n+1 ))
# done 

# displaying the contents of an array 

arr=("Nikhil" "Suraj" "Manthan" "Mandhar" "Royna" "Triveni")

length=${#arr[@]}
i=0

while (( $i < length ))
do 
    echo ${arr[i]}
    (( i++ ))
done