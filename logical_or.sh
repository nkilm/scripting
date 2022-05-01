#! /usr/bin/bash

age=15

# 3 ways to combine conditions using AND 

# [ cond1 ] || [ cond2 ]
# [ cond1 -o cond2 ]
# [[ cond1 || cond 2 ]]

# if [ $age -gt 18 ] || [ $age -lt 30 ]
# if [ $age -gt 18 -o $age -lt 30 ]
if [[ $age -gt 18 || $age -lt 30 ]]
then 
    echo "Young..."
else 
    echo "Getting old..."
fi