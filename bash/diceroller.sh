#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"
########################################
#Modify the script to be more descriptive of the output to tell the user you are rolling a pair of six-sided dice

echo "
You are rolling a pair of six-sided dice...
$(( RANDOM % 6 + 1)) rolled
"

#Modify the script to add rolling 5 six-sided dice

echo "
You are rolling 5 six-sided dice...

dice 1 - $(( RANDOM % 6 + 1))
dice 2 - $(( RANDOM % 6 + 1))
dice 3 - $(( RANDOM % 6 + 1))
dice 4 - $(( RANDOM % 6 + 1))
dice 5 - $(( RANDOM % 6 + 1)) 

rolled
"







#######################################
#Modify the script to add rolling one 20-sided die
