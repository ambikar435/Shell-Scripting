#!/usr/bin/bash

# Loop from 0 to 10
for (( i=0; i<=10; i++ ))
do
    ## If i is greater than 5, exit the loop
    if [ $i -gt 5 ]
    then
        break
    fi
    echo "Number is $i"
done
   
for (( i=0; i<=10; i++ ))
do
    ## If i is 5 or 8, skip this iteration and continue to the next
    if [ $i -eq 5 -o $i -eq 8 ]
    then
        continue
    fi
    echo "Number is $i"
done
