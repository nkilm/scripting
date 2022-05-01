#! /usr/bin/bash

<<comment

basic format of swich case 

case word in
   pattern1)
      Statement(s) to be executed if pattern1 matches
      ;;
   pattern2)
      Statement(s) to be executed if pattern2 matches
      ;;
   pattern3)
      Statement(s) to be executed if pattern3 matches
      ;;
   *)
     Default condition to be executed
     ;;
esac

NOTE : We can use RegExp in pattern 

comment

# query=$1

# case "$query" in  
#     "namaste")
#         echo "Hindi";;
#     "hola")
#         echo "Spanish";;
#     "salut")
#         echo "French";;
#     "hi")
#         echo "English";;
#     "konnichiwa")
#         echo "Japanese";;
#     *)
#         echo "Unknown";;
# esac


# using regex 

read -p "Enter char: " query

<<NOTE

set LANG=C if capital case is not working
LANG is global variable

NOTE

case "$query" in  
    [a-z])
        echo "Small Case";;
    [A-Z])
        echo "Capital case";;
    [0-9])
        echo "Digit";;
    *)
        echo "Unknown";;
esac