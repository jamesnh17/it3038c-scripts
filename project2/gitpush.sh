#!/bin/bash

# As always, thanks to linuxfordevices.com/tutorials for the tutorials!

# Variables to change color of keywords in cli, so that we don't commit to the wrong branch.
RED_FONT=`tput setaf 1`
RESET_FONT=`tput sgr0`

echo -e "You are on the ${RED_FONT}"$(git branch)"${RESET_FONT} branch \n" 
echo -e "$(git status)\n"
echo "What would you like your commit message to be? "
read message
git add .
git commit -m"${message}"

echo "Commiting files to your github now. "
git push
