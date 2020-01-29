#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.



# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo "Please enter your first number"
read firstnum

echo "Please enter your second number"
read secondnum

multiply=$((firstnum * secondnum))
subtract=$((firstnum - secondnum))
sum=$((firstnum + secondnum))
remain=$((firstnum % secondnum))
division=$((firstnum / secondnum))
power=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum minus $secondnum is $subtract
$firstnum times $secondnum is $multiply
$firstnum power by $secondnum is $power
$firstnum divided by $secondnum is $division
$firstnum division by $secondnum is $division with rem $remain
  - More precisely, it is $fpdividend
EOF
