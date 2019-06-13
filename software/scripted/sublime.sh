#!/usr/bin/env bash

#===================================================================================
# Sublime Text - https://www.docker.com/products/docker-desktop
#===================================================================================

# setup
name="Sublime Text"
check="/Applications/Sublime Text.app"

# Installation
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew cask install sublime-text
    printf "\n\n"
fi
