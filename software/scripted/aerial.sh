#!/usr/bin/env bash

# setup
name="Aerial Screen Saver"
check="/Users/${USER}/Library/Screen Savers/Aerial.saver"
url="https://github.com/JohnCoates/Aerial"

# Installation
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew cask install aerial
    printf "\n\n"
fi
