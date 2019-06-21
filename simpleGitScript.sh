#!/bin/bash
# This script will update the Git repository:
# 
# Author: Robert Alan Wright

# Clear the screen without deleting previous output
clear -x  
# Initialize variables
now=$(date +"%m-%d-%Y@%H.%M.%S")
_file="./changelogs/changeOutputTest-$now.txt"

# Show current status of git process
git status

# Separate lines to clearly see each step taken
printf "\n\n"

# Inform user of log file location
echo "Saving 'git status' output to '$_file'..."

# Generate log file
git status > $_file
echo "Finished writing to '$_file'. "

printf "\n\n"

# Add current directory and subdirectories to staging
git add --all
printf "\n\n"

# Set automatic commit message including the date
git commit -m "Added comments and tested date usage: `date`"
printf "\n\n"
git status
printf "\n\n"

# Push staged changes to the remote repository
git push -u origin master 
printf "\n\n"
git status
printf "\n\n"

# Lets the user know the script has finished
echo "Script has finished!"
