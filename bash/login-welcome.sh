#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############


title="Boss"
USER="Kirk"
hostname=$(hostname)
date=$(date +'%I:%M %p')
weekday="$(date +%A)"

test $weekday = "Sunday" && title="Bold"
test $weekday = "Monday" && title="Versatile"
test $weekday = "Tuesday" && title="Risky"
test $weekday = "Wednesday" && title="Resilient"
test $weekday = "Thursday" && title="Capable"
test $weekday = "Friday" && title="Powerful"
test $weekday = "Saturday" && title="Amazing"


###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $USER!"

It is $weekday at $date.

EOF

###Modify it to store the output in a variable instead of displaying it on the screen directly
#Use the cowsay command to display to variable containing your output
welcomeMessageOut=$(~/COMP2101/bash/welcome-message.sh)
cowsay $welcomeMessageOut
