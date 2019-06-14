#!/usr/bin/env bash

# setup
app="tableplus"
name="TablePlus"
check="/Applications/TablePlus.app"
url="https://tableplus.io"

# Installation
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi
