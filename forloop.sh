# iterations -> in bash scripting we have
# 1. while
# 2. for
# 3. until
# 4. select

#for i in {1..10}; do
#or





for i in $(seq 1 100)
do
    if ([ $(expr $i % 3) -eq 0 ] || [ $(expr $i % 3) -eq 0 ]) && [ $(expr $i % 15) -ne 0 ];then
        echo $i
    fi
done

 x=mississipi
 
 grep -o "s" <<<"$x" | wc -l
 
for command in pwd ls date  #The loop assigns each word (pwd, ls, data) to the variable command one by one.
do
    $command
done


#list only files (not directories) in the current directory using a Bash for loop.

for item in * #This loops through all items in the current directory (* is a wildcard).
do
    if [ -f "$item" ]
    then
        echo "$item"
    fi
done
