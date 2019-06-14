#!/usr/bin/env bash

# setup
app="virtualbox"
name="VirtualBox"
check="/Applications/VirtualBox.app"
url="https://www.virtualbox.org"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi
