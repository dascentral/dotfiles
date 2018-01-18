#!/bin/sh

#===================================================================================
# ack - http://beyondgrep.com/install/
#===================================================================================

# setup
name="ack"
check="/usr/local/bin/ack"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name...\033[0m\n"
    brew install ack
    printf "\n\n"
fi
