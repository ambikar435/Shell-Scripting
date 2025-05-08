#!/usr/bin/bash

#syntax
#function name(){
#    commands
#}
#------------or------------

#name(){
#   commands
#}

#--------------------------------------------
function Hello(){
    echo "Hello"
}

Hello


#-----------------------WHY TO USE THE KEYWORD LOCAL INSIDE THE FUNCTIONS---------------------
add(){
    result=$(( $1 + $2 ))
    echo "result inside the function $result"
}

result=10
echo "result outside the add function [$result] : before expected result is 10" # expected result is 10

add 3 4
echo "esult outside the add function is [$result] : After expected is 10" # here expected result is 10 but you will get 7 in order to uvrcome this issue use the keyword local


#----------------------------local keyword for variables in function--------------


addfunc(){
    local result=$(( $1 + $2 ))
    echo "result inside the function $result"
}

result=10
echo "result outside the add function [$result] : before expected result is 10" # expected result is 10

addfunc 3 4
echo "esult outside the add function is [$result] : After expected result is 10" # here expected result is 10 




#----------------------------------------------------------

usage(){
    echo "you need to provids an argumnet : "
    echo "usage: $0 file_name"
}



is_file_exist(){
    local file="$1" #here $1 is the argument passed to the function is_file_exist
    [[ -f "$file" ]] && return 0 || return 1 
    #It checks if the file exists and is a regular file—if true, it returns success (0); otherwise, it returns failure (1).
}

# Check if no argument is provided
[[ $# -eq 0 ]] && usage #[[ $# -eq 0 ]] checks if the number of arguments is zero; if true, it runs usage.

# Check if the file exists
if ( is_file_exist "$1" ) # here $1 is the argument passed to the script
then
    echo "File Found"
else
    echo "File Not Found"
fi









