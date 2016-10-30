#!/bin/sh

#===================================================================================
# Composer Install Script - https://getcomposer.org/download/
#===================================================================================

# setup
name="Yarn"
check="/usr/local/bin/yarn"

# Check if installed
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
    exit 1;
fi
printf "\n"

# Install
brew install yarn

# Wrap it up
printf "\n\n"