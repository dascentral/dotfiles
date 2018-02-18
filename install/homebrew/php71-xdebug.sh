#!/bin/sh

#===================================================================================
# PHP 7.1 Xdebug
#===================================================================================

# setup
name="PHP 7.1 Xdebug"
check="/usr/local/Cellar/php71-xdebug"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;33mInstalling $name.\033[0m\n"
    brew install php71-xdebug
    printf "\n\n"
fi
