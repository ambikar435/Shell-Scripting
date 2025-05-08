#!/usr/bin/bash

# taking user input and save it into a variable
echo "Enter name : "
read name
echo "Name :" $name

# taking user multiple input and save it into a variable 
read -p "Enter names: " user_names
echo "Name :" $user_names

# taking user multiple input and save it into a variable but nor display the typing data 
echo "---------------------------------"
read -p "Enter names: " user_names
read -sp "Enter password: " password 
echo "Name :" $user_names "password:" $password

# taking user multiple input and save it into a variable access them as an array

echo "--------------------Array------------------"

echo "Enter the names: "
read -a names
echo "Names: ${names[0]}, ${names[1]}"

# taking user multiple input and not save it into a variable access them through default veriable [$REPLAY]

echo "--------------------REPLY------------------"

echo "Enter the names: "
read 
echo "Names: $REPLY"
