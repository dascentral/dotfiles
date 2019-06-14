#!/usr/bin/env bash

#===================================================================================
# WhatsApp - https://www.whatsapp.com
#===================================================================================

# setup
app="whatsapp"
name="WhatsApp"
check="/Applications/WhatsApp.app"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi
