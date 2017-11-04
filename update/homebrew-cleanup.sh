#!/bin/sh

#===================================================================================
# Homebrew - http://brew.sh/
#===================================================================================

# setup
check="/usr/local/bin/brew"

# Update if installed
if [ -e $check ]; then
    printf "\033[1;37mBrew cleanup.\033[0m\n"
    brew cleanup
    printf "\n"
fi
