#!/bin/sh

#===================================================================================
# Homebrew - http://brew.sh/
#===================================================================================

# setup
name="Homebrew"
check="/usr/local/bin/brew"

# Check if installed
if [ -e $check ]; then
    printf "\033[1mBrew update...\033[0m\n"
    brew update
    printf "\n"
    exit 0;
fi
printf "\n"

# Install
printf "\033[1mInstalling $name...\033[0m"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update before use
brew update

# Wrap it up
printf "\n\n\n"