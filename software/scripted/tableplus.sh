#!/usr/bin/env bash

#===================================================================================
# TablePlus - https://tableplus.io/
#===================================================================================

# setup
app="tableplus"
name="TablePlus"
check="/Applications/TablePlus.app"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi
