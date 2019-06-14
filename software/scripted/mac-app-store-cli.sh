#!/usr/bin/env bash

# setup
name="Mac App Store CLI"
check="/usr/local/bin/mas"
url="https://github.com/mas-cli/mas"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew install mas
    printf "\n\n"
fi
