#!/usr/bin/env bash

# setup
app="bartender"
name="Bartender"
check="/Applications/Bartender 3.app"
url="https://www.macbartender.com"

# Installation
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi
