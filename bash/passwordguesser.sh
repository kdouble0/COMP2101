#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#myString="TestString"
referenceString="password"
# 5 tries to get the password right
tries=5

#[ $myString = $referenceString ] && echo "Correct!" || echo "Incorrect."
#Ask user for a password guess


#Task 2 Use if command to test if user got it right or wrong
while [ $tries != 0 ]
do
read -p "Please guess a password: " passwordGuess
#read -s $passwordGuess


#if the password is = to the referenceString it will display Correct password
if [ $passwordGuess == $referenceString ];then
  echo "Correct Password!"
break
else
#if the password is incorrect it will display this
  echo "Your password is incorrect, Please try again"
#Task 3 password will increment until it reaches 5 and then end
  k=$(( $k - 1 ))

fi
done
