#!/usr/bin/env bash

#===================================================================================
# SSH Copy ID
#===================================================================================

# setup
name="SSH Copy ID"
check="/usr/local/bin/ssh-copy-id"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew install ssh-copy-id
    printf "\n\n"
fi
