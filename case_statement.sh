#!/usr/bin/bash



#syntax
#case expression in
#    pattern1 )
#        statement ;;
#    pattern2 )
#        statement ;;
#    ....
#esac
vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of the $vehicle is 100 doller" ;; #;; ends each case block.
    "van" )
        echo "Rent of the $vehicle is 80 doller" ;;
    "bike" )
        echo "Rent of the $vehicle is 50 doller" ;;
    "bi-cycle" )
        echo "Rent of the $vehicle is 5 doller" ;;
    "truck" )
        echo "Rent of the $vehicle is 150 doller" ;;
    # * acts as the default case, if no other patterns match.
    * )
        echo "UNKNOWN VEHICLE" ;;
esac #ends the case statement

# second example: use read keywork to take user input

echo -e "Enter some character : \c"
read value

case $value in
    [a-z] ) #Matches any single lowercase letter
        echo "user entered $value which is from a to z" ;;
    [A-Z] ) #Matches any single upper letter
        echo "user entered $value which is from A to Z" ;;
    [0-9] ) #Matches any single digit
        echo "user entered $value which is from 0 to 9" ;;
    ? ) #Matches any single character
        echo "user entered $value a special character" ;;
    ab* )
        echo "user entered the data starts from ab--" ;;
    * ) # Matches zero or more characters
        echo "user entered Unknown input" ;;
    
esac





     
      
        
