#!/bin/sh

#===================================================================================
# ack Install Script - http://beyondgrep.com/install/
#===================================================================================

# setup
name="ack"
check="/usr/local/bin/ack"

# Check if installed
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
    exit 1;
fi

# Install
brew install ack

# Wrap it up
printf "\n\n"