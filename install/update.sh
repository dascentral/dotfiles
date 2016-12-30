#!/bin/sh

#===================================================================================
# dotfiles update script
#===================================================================================

# Clean any potential conflicts
printf "\033[1mResetting repository.\033[0m\n"
git reset HEAD --hard
printf "\n"

# Ensure we have the latest
printf "\033[1mPulling latest from origin.\033[0m\n"
git pull
printf "\n"
