#!/bin/sh

#===================================================================================
# Composer - https://getcomposer.org/download/
#===================================================================================

# setup
name="PSR-2 Code Formatting"
#check="/usr/local/bin/composer"

# Check if installed
#if [ -e $check ]; then
#    printf "\033[1mUpdating $name...\033[0m\n"
#    /usr/local/bin/composer self-update
#    printf "\n"
#    exit 0;
#fi
#printf "\n"

# Install
printf "\033[1mInstalling $name...\033[0m\n"
composer global require friendsofphp/php-cs-fixer

# Wrap it up
printf "\n"
