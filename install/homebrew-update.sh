#!/bin/sh

#===================================================================================
# Homebrew - http://brew.sh/
#===================================================================================

# setup
name="Homebrew"
check="/usr/local/bin/brew"

# Update if installed
if [ -e $check ]; then
    printf "\033[1mBrew update...\033[0m\n"
    brew update
    printf "\n"
fi
