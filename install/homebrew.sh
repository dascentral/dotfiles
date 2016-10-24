#!/bin/sh

#===================================================================================
# Homebrew Install Script - macOS 10.11.3 - http://brew.sh/
#===================================================================================

# setup
name="Homebrew"
check="/usr/local/bin/brew"

# Check if installed
if [ -e $check ]; then
    #printf "\033[1m$name already installed.\033[0m\n"
    exit 1;
fi
printf "\n\n\033[1mInstalling $name.\033[0m\n"

# Install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update before use
brew update
