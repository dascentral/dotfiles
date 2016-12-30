#!/bin/sh

#===================================================================================
# Mac App Store CLI - https://github.com/mas-cli/mas
#===================================================================================

# setup
name="Mac App Store CLI"
check="/usr/local/bin/mas"

# Check if installed
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
    exit 1;
fi
printf "\n"

# Install
brew install mas

# Wrap it up
printf "\n\n"