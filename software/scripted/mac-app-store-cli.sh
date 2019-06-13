#!/usr/bin/env bash

#===================================================================================
# Mac App Store CLI - https://github.com/mas-cli/mas
#===================================================================================

# setup
name="Mac App Store CLI"
check="/usr/local/bin/mas"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew install mas
    printf "\n\n"
fi
