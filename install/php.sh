#!/bin/sh

#===================================================================================
# PHP
#===================================================================================

# setup
name="PHP 7.1"
check="/usr/bin/php"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;33mInstalling $name...\033[0m\n"
brew tap homebrew/homebrew-php
brew install php71
brew services start homebrew/php/php71

# Wrap it up
printf "\n\n"
