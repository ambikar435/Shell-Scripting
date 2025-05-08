#!/usr/bin/bash

num1=20
num2=2

echo "The sum of num1 and num2 is $(( num1 + num2 ))"
echo "The diff of num1 and num2 is $(( num1 - num2 ))"
echo "The product of num1 and num2 is $(( num1 * num2 ))"
echo "The division of num1 and num2 is $(( num1 / num2 ))"
echo "The reminder of num1 and num2 is $(( num1 % num2 ))"

# best way to perform arthmetic operation in bash is using expr

echo "The sum of num1 and num2 is $(expr $num1 + $num2 )"
echo "The diff of num1 and num2 is $(expr $num1 - $num2 )"
echo "The product of num1 and num2 is $(expr $num1 \* $num2 )" # we are not suppose to use * in expr use forward slash(\) to aviod the challenges
#So when using * in expr, you must escape it with a backslash (\) to prevent Bash from interpreting it.	
echo "The division of num1 and num2 is $(expr $num1 / $num2 )"
echo "The reminder of num1 and num2 is $(expr $num1 % $num2)"

#Arthematic operation on decimal numbers
#------------bc-(Bash Calculator) is the most common tool for decimal (floating-point) math in Bash.

num1=20.5
num2=2

sum=$(echo "$num1+$num2" | bc)
echo "Sum: $sum"

diff=$(echo "$num1-$num2" | bc)
echo "Diff: $diff"

product=$(echo "$num1*$num2" | bc)
echo "Product: $product"

division=$(echo "scale=2;$num1/$num2" | bc)
echo "Division: $division"

remainder=$(echo "$num1%$num2" | bc)
echo "Reminder: $remainder"

#Check the square root of given number
sq_num=81
square_root=$(echo "scale=2;sqrt($sq_num)" | bc -l)
echo "square root of the given number is : $square_root"

#calculate the power the given number
power_of=$(echo "scale=2;$sq_num^$num2" | bc -l)
echo "power of the given number is : $power_of"


