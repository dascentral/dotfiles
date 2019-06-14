#!/usr/bin/env bash

# setup
app="whatsapp"
name="WhatsApp"
check="/Applications/WhatsApp.app"
url="https://www.whatsapp.com"

# Installation
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi
