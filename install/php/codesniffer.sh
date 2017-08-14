#!/bin/sh

#===================================================================================
# Composer - https://getcomposer.org/download/
#===================================================================================

# setup
name="PHP Code Sniffer"
check="/Users/$USER/.composer/vendor/squizlabs/php_codesniffer"

# Check if installed
if [ -e $check ]; then
    printf "\033[1m$name already installed.\033[0m\n"
    exit 0;
fi

# Install
printf "\033[1mInstalling $name...\033[0m\n"
composer global require "squizlabs/php_codesniffer=*"

# Wrap it up
printf "\n"
