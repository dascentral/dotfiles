#!/bin/sh

#===================================================================================
# PHP CS Fixer
#===================================================================================

# setup
name="PHP CS Fixer"
check="/Users/$USER/.composer/vendor/friendsofphp/php-cs-fixer"

# Check if installed
if [ -e $check ]; then
    printf "\033[1m$name already installed.\033[0m\n\n"
    exit 0;
fi

# Install
printf "\033[1mInstalling $name...\033[0m\n"
composer global require friendsofphp/php-cs-fixer

# Wrap it up
printf "\n"
