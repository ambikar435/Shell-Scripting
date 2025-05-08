#!/usr/bin/bash

#syntax
#while [condition]
#do
#    command1
#    command2
#done

n=1

while [ $n -le 3 ] #(( $n -le 10 )) can also be used here for arithmetic comparisons
do
    echo "$n"
    n=$(( n+1 )) # Alternatively, (( n++ )) also works to increment by 1
    #gnome-terminal & #This opens a new terminal window each time
    # The "&" ensures the gnome-terminal command runs asynchronously, meaning it runs in the background, allowing the loop to continue without waiting for the terminal window to close.
done


# There are multiple ways to read the files using while loop

while read line
do
    echo "$line" #do echo "$line": For each line, it prints the content of the variable line.
done < while_loop.sh

echo "--------------------------------------"

cat while_loop.sh | while read line 
#cat while_loop.sh: The cat command reads the content of while_loop.sh and outputs it to stdout.
#| while read line: The pipe (|) takes the output of the cat command and passes it to the while loop. The loop reads each line and assigns it to the variable line.
do
    echo "$line"
done

echo "-------------------USING IFS------"

while IFS=" " read line
#IFS=" ": The Internal Field Separator (IFS) is a special variable in Bash that defines the characters used to separate fields in input. By default, IFS is set to whitespace (spaces, tabs, and newlines).
do
    echo "$line"
done < while_loop.sh
