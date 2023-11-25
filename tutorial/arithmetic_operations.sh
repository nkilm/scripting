#! /usr/bin/bash

num1=100
num2=20

# echo 1+1 # this is not get evaluated to 2

# echo $(( num1+num2 ))
# echo $(( num1-num2 ))
# echo $(( num1*num2 ))
# echo $(( num1/num2 ))
# echo $(( num1%num2 ))

# alterexpru$sing   $'expr

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 ) # should use \ for multiplication - escape sequencing 
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )


# Testing program 

read -p "Enter a number to check if Even or not: " num 

if [ $(( num%2 )) -eq 0 ]
then 
    echo "Even" 
else 
    echo "Odd"
fi 
