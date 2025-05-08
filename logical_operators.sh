#!/usr/bin/bash

age=20

#if [[ "$age" -gt 18 && "$age" -le 30 ]] or 
if [ "$age" -gt 18 ] && [ "$age" -le 30 ]
then
    echo "Valid age"
else
    echo "Not a Valid age"
fi

age=70
if [[ "$age" -gt 18 || "$age" -le 30 ]]
#if [ "$age" -gt 18 ] || [ "$age" -le 30 ] 
then
    echo "Valid age"
else
    echo "Not a Valid age"
fi
