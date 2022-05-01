#! /usr/bin/bash

# n=0
# while [ $n -lt 3 ]
# do 
#     sleep 1 # 1 second
#     echo $n
#     (( n++ ))
# done 

# open cmd
n=0 

while [ $n -lt 3 ]
do 
    powershell &
    sleep 1
    (( n++ ))
done 