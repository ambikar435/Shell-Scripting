#!/usr/bin/bash
#while loop: Executes as long as the condition is true

#until loop: Executes as long as the condition is false

n=1

until (( $n > 10 ))
do 
    echo "N value is $n we are checking for greater then 10 condition"
    (( n++ ))
done
