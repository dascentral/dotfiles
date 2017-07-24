#!/bin/sh

#===================================================================================
# Homebrew - http://brew.sh/
#===================================================================================

# setup
name="Homebrew"
check="/usr/local/bin/brew"

# Install if not installed
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
else
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    printf "\n\n"
fi