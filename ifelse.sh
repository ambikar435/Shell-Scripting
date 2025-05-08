#!/usr/bin/bash
#integer comparison


# -eq - is equal to - if [ "$a" -eq "$b" ]
# -ne - is not equal to - if [ "$a" -ne "$b" ]
# -gt - is greater then - if [ "$a" -gt "$b" ]
# -ge - is greater then or equal to - if [ "$a" -ge "$b" ]
# -lt - is less then - if [ "$a" -lt "$b" ]
# -le - is less then or equal to - if [ "$a" -le "$b" ]
# < - is less then  - (("$a" = "$b"))
# <= - is less then or equal to  - (("$a" <= "$b"))
# > - is greater then  - (("$a" > "$b"))
# >= - is greater then or equal to  - (("$a" >= "$b"))

#string comparision

# = - is equal to - if ["$a" = "$b"]
# == - is equal to - if ["$a" == "$b"]
# != - is not equal to - if ["$a" = "$b"]
# < - is less then [in ASCII alphabetic order]- if ["$a" < "$b"]
# > - is greater then [in ASCII alphabetic order]- if ["$a" > "$b"]
# -z - string is equal to - if ["$a" = "$b"]

echo "integer comparison"
count=10

if [ $count -eq 10 ]
then
    echo "Condition is True"
fi

if (( $count == 10 ));
then
    echo "Condition is True"
fi
echo "----------------"
# if you use angle breckets(< and >) in interger comparision you want to use double brackets (())same in strings also but square breackts [[]] 
if (( $count > 10 ));
then
    echo "Condition is True"
else
    echo "Condition is False"
fi

echo "integer comparison"

str1=abc

if [ $str1 == "abc" ]
then
    echo "condition is True"
else
    echo "condition is False"
fi


if [ $str1 != "abccc" ]
then
    echo "condition is False"
else
    echo "condition is True"
fi

echo "use double square brackets for angle breackets (<,>,<=,>=)"
str2=a
if [[ $str2 < "b" ]]
then
    echo "condition is True"
else
    echo "condition is False"
fi

echo "--elif condition in bash--"
str2=a
if [[ $str2 > "b" ]]
then
    echo "condition a is True"
elif [[ $str2 == "a" ]]
then
    echo "condition b is True" 
else
    echo "condition is False"
fi








