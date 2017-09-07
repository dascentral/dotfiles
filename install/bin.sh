#!/bin/sh

#===================================================================================
# /usr/local/bin scripts
#===================================================================================

# Put /usr/local/bin scripts in place
printf "\033[1;33mCopying scripts to /usr/local/bin... "
cp /Users/$USER/Workspace/dotfiles/bin/* /usr/local/bin
printf "complete.\033[0m"

# Wrap it up
printf "\n\n"
