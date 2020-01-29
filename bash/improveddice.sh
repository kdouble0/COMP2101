#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
diesidesmax=6



#  put the bias, or minimum value for the generated number in another variable
diesidesmin=1


#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias
echo "
You are rolling a pair of six-sided dice...
$(( RANDOM %  $diesidesmax + $diesidesmin )) rolled
$(( RANDOM %  $diesidesmax + $diesidesmin )) rolled
"


# Task 2:
##  generate the sum of the dice
die1=$(( RANDOM % 6 + 1))
die2=$(( RANDOM % 6 + 1 ))
sum=$((die1+die2))
echo "The sum of your roll is $sum"

#  generate the average of the dice
die1=$(( RANDOM % 6 + 1))
die2=$(( RANDOM % 6 + 1 ))
avg=$((die1/die2))
echo "The average of your roll is $avg"
#  display a summary of what was rolled, and what the results of your arithmetic were
echo "Here are your roll results :
The sum of your roll is : $sum
The average of your roll is :$avg

"
# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
die1=$(( RANDOM % 6 + 1))
die2=$(( RANDOM % 6 + 1 ))
# display the results
echo "Rolled $die1, $die2"
