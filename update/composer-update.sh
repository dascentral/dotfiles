#!/bin/sh

#===================================================================================
# Composer - https://getcomposer.org/download/
#===================================================================================

# setup
check="/usr/local/bin/composer"

# Update if installed
if [ -e $check ]; then
    printf "\033[1;37mComposer self-update...\033[0m\n"
    /usr/local/bin/composer self-update
    printf "\n"
fi
