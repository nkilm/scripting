#! /usr/bin/bash

# read is used to take inputs from the command line 

# echo "Enter your name"
# read NAME 

# echo "Hello $NAME"


# Multiple inputs 
# echo "Enter all the names"
# read name1 name2 name3

# echo "Given names: $name1,$name2,$name3"

# Taking inputs along same line. Use -p flag 
# read -p "Enter Name: " NAME 
# echo "Hey $NAME"

# Take username and password as inputs 
# read -p "username: " username 
# # read -s -p "password: " password  # -s flag is used to hide whatever we type
# read -sp "password: " password  # -s flag is used to hide whatever we type

# echo "Username is $username and password is $password"



# Taking array of inputs - use -a flag

# echo "Enter Names: "
# read -a names 
# echo "first two names: ${names[0]}, ${names[1]}"


# NOTE: When no variable name is given, by default the inputs are stored in REPLY

echo "Nav kay?"
read 
echo "Namaste $REPLY🙏"
