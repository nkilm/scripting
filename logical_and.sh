#! /usr/bin/bash

age=20

# 3 ways to combine conditions using AND 

# [ cond1 ] && [ cond2 ]
# [ cond1 -a cond2 ]
# [[ cond1 && cond 2 ]]

# if [ $age -gt 18 ] && [ $age -lt 30 ]
# if [ $age -gt 18 -a $age -lt 30 ]
if [[ $age -gt 18 && $age -lt 30 ]]
then 
    echo "Young..."
else 
    echo "Getting old..."
fi