#:bin/bash

# Clear screen 
clear >$(tty)

# Lab Info
echo "Lab 01 SUM & AVERAGE"
echo "Author: Luis F Suarez Harasic"
echo "Instructions:"
echo "------------"
echo "Write a script using a Linus shell programming language to compute the sum and average of any 10 numbers. Print out sum and average"
echo ""

# Prompt for ten numbers
echo "Please enter numbers."
echo -n "1st number: "
read one
echo -n "2nd number: "
read two
echo -n "3rd number: "
read three
echo -n "4rd number: "
read four 
echo -n "5th number: "
read five
echo -n "6th number: "
read six
echo -n "7th number: "
read seven
echo -n "8th number: "
read eight
echo -n "9th number: "
read nine
echo -n "10th number: "
read ten

# Calculate Total
sum=$(($one + $two + $three + $four + $five + $six + $seven + $eight + $nine + $ten))

# Print results
echo ""
echo "The sum of your numbers is: " $sum
echo -n "The average of your numbers is: " 

# Calculate and print average with floating point, unix aritmetic operations only use integers.
echo "$sum 10" | awk '{printf "%.2f \n", $1/$2}'
echo ""
# END OF FILE