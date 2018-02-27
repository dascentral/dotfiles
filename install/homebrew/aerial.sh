#!/bin/sh

#===================================================================================
# Aerial Screen Saver - https://github.com/JohnCoates/Aerial
#===================================================================================

# setup
name="Aerial Screen Saver"
check="/Users/${USER}/Library/Screen Savers/Aerial.saver"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew cask install aerial
    printf "\n\n"
fi
