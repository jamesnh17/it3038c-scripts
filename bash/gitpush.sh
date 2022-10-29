#!/bin/bash

RED_FONT=`tput setaf 1`
RESET_FONT=`tput sgr0`

#cd ~/it3038c-scripts/
echo "You are on the ${RED_FONT}"$(git branch)"${RESET_FONT} branch "
echo "What would you like your commit message to be? "
read message
git add .
git commit -m"${message}"
if [ -n "$(git status)" ];
then
 echo "You have nothing new to commit!"
else
 git status
 echo "Commiting files to github"
 git push
fi