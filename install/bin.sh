#!/bin/sh

#===================================================================================
# /usr/local/bin scripts
#===================================================================================

# Put /usr/local/bin scripts in place
printf "\033[1mCopying scripts to /usr/local/bin...\033[0m"
cp /Users/$USER/Workspace/dotfiles/bin/* /usr/local/bin
printf "\033[1m complete.\033[0m"

# Wrap it up
printf "\n\n"