#!/bin/sh

#===================================================================================
# Mac App Store CLI - https://github.com/mas-cli/mas
#===================================================================================

# setup
name="Mac App Store CLI"
check="/usr/local/bin/mas"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;33mInstalling $name...\033[0m\n"
brew install mas

# Wrap it up
printf "\n\n"
