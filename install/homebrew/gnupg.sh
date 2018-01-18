#!/bin/sh

#===================================================================================
# GnuPG - http://beyondgrep.com/install/
#===================================================================================

# setup
name="GnuPG"
check="/usr/local/bin/gpg"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;33mInstalling $name...\033[0m\n"
brew install gnupg gnupg2

# Wrap it up
printf "\n\n"
