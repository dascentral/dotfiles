#!/bin/sh

#===================================================================================
# PHP CodeSniffer
#===================================================================================

# setup
name="PHP Code Sniffer"
check="/Users/$USER/.composer/vendor/squizlabs/php_codesniffer"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name...\033[0m\n"
    composer global require "squizlabs/php_codesniffer=*"
    printf "\n"
fi
