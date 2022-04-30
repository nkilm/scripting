#! /usr/bin/bash

echo -e "Enter the file name: \c" # -e flag is used for escape sequences
read file_name 

# -e --> existance 
# -f --> regular file or not 
# -d --> directory or not 
# -b --> block spl file 
# -c --> character spl file 
# -s --> check if a file is empty or not


# if [ -e $file_name ] # -e = just to check if file exists or not
# then 
#     echo "$file_name exists"
# else
#     echo "$file_name does not exists"
# fi

if [ -f $file_name ] # -e = just to check if file exists or not
then 
    echo "$file_name exists and it is regular"
else
    echo "$file_name does not exists and it is not regular"
fi

if [ -s $file_name ] 
then 
    echo "$file_name is not empty"
else
    echo "$file_name is empty"
fi