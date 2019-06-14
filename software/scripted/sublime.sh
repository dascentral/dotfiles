#!/usr/bin/env bash

# setup
name="Sublime Text"
check="/Applications/Sublime Text.app"
url="https://www.sublimetext.com/"

# Installation
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install sublime-text
    printf "\n\n"
fi
