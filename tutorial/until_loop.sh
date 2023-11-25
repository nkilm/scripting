#! /usr/bin/bash

# until loop - execute until the condition is false 
n=0
until [ $n -ge 10 ];
do 
echo $n 
n=$((n+1))
done