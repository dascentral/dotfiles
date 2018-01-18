#!/bin/sh

#===================================================================================
# ack - http://beyondgrep.com/install/
#===================================================================================

# setup
name="ack"
check="/usr/local/bin/ack"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;33m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;37mInstalling $name...\033[0m\n"
brew install ack

# Wrap it up
printf "\n\n"
