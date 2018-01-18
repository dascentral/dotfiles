#!/bin/sh

#===================================================================================
# PHP
#===================================================================================

# setup
name="PHP 7.1"
check="/usr/bin/php"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;33mInstalling $name.\033[0m\n"
    brew install homebrew/php/php71
    brew services start homebrew/php/php71
    printf "\n\n"
fi
