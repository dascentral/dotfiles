#!/usr/bin/env bash

# setup
name="GnuPG"
check="/usr/local/bin/gpg"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew install gnupg gnupg2
    printf "\n\n"
fi
