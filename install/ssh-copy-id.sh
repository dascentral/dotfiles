#!/bin/sh

#===================================================================================
# SSH Copy ID
#===================================================================================

# setup
name="SSH Copy ID"
check="/usr/local/bin/ssh-copy-id"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
brew install ssh-copy-id

# Wrap it up
printf "\n\n"
