#!/bin/sh

#===================================================================================
# SSH Copy ID
#===================================================================================

# setup
name="SSH Copy ID"
check="/usr/local/bin/ssh-copy-id"

# Check if installed
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
    exit 1;
fi
printf "\n"

# Install
brew install ssh-copy-id

# Wrap it up
printf "\n\n"