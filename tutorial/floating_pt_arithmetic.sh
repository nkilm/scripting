#! /usr/bin/bash

# we can make use of bc 

# | is called as pipe, the output of LHS is input to RHS of pipe
echo "20.5+5" | bc  # 20.5+10 is given as input to bc 
echo "20.5-5" | bc 
echo "20.5*5" | bc 
echo "scale=2;20.5/5" | bc  # to get more decimal points use scale
echo "20.5%5" | bc 

num1=16
num2=10
# echo "$num1+$num2" | bc

# square root 
echo "scale=2;sqrt($num1)" | bc -l # -l means to use math library
echo "scale=2;3^3" | bc 


