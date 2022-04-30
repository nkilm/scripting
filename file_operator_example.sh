#! /usr/bin/bash

echo -e "Enter the name of the file: \c"
read file_name 

if [ -f $file_name ]
then 
    # if file exists then do something 
    # check if write permission is there or not 
    if [ -w $file_name ]
    then 
        echo "Type something to append to $file_name(ctrl+d to exit)"
        cat >> $file_name # >> means to append, > means overwrite
    else 
        echo "$file_name does not have write permission(s)"
    fi
else 
    echo "File does not exists"
fi