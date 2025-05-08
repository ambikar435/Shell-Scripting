#!/usr/bin/bash
#is used to prompt the user for input on the same line, without moving to a new line.
echo -e "Enter the file name: \c"
#-e enables interpretation of escape characters
#\c prevents the newline after the text — the cursor stays on the same line
read file_name

if [ -e $file_name ]
then 
    echo "$file_name: found"
else
    #touch $file_name
    echo "$file_name: not found"
fi

echo -e "Enter the file name: \c"
read file_name
if [ -f $file_name ]
then 
    echo "$file_name: found"
else
    #touch $file_name
    echo "$file_name: not found"
fi
# to check the dir exist or not
echo -e "Enter the file name: \c"
read file_name
if [ -d $file_name ]
then 
    echo "$file_name: found"
else
    #touch $file_name
    echo "$file_name: not found"
fi

# to check the file is empty we want to use if [ -s $file_name ]
echo "-s → True if file exists and size > 0"
if [ -s "$file_name" ]; then
    echo "File is NOT empty"
else
    echo "File is empty or does not exist"
fi

# we use -f to check wether the file is regular file or not
# to check the file is block special file we want to use if [ -b $file_name ]
# to check the file is character special file we want to use if [ -c $file_name ]
# to check the file is readable -r if [ -r $file_name ]
# to check the file is executable -x if [ -x $file_name ]


