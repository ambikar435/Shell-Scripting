#!/usr/bin/bash

# bash supports simple one dimentional array

os=("ubuntu" "windows" "mac")

#Prints all elements of the array.
echo "${os[@]}"

#Prints the element at index 1 (arrays are zero-indexed).
echo "${os[1]}"

#Meaning: Prints all indices (keys) of the array.
echo "${!os[@]}"

#Prints the number of elements in the array.
echo "${#os[@]}"

#Add elements to array
os[3]="fedora" 
echo "array is added with new element ${os[@]}"

# delete elements from arrey
unset os[3]
echo "array is removed one element ${os[@]}"

#overwrite the value
#os[1]="fedora" 



