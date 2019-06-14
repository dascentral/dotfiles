#!/usr/bin/env bash

# setup
name="ack"
check="/usr/local/bin/ack"
url="http://beyondgrep.com/install/"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew install ack
    printf "\n\n"
fi
