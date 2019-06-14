#!/usr/bin/env bash

#===================================================================================
# Composer Install Script
#===================================================================================
#
# DESCRIPTION
# Keeps Composer up-to-date and ensures all software installed via Composer
# exists on the local machine.
#
#===================================================================================


#===================================================================================
# Composer Update
#===================================================================================
printf "\033[1;37mComposer self-update.\033[0m\n"
/usr/local/bin/composer self-update
printf "\n"



#===================================================================================
# Install Software
#===================================================================================

# Composer Global Require
name="Composer Global Require"
check="/Users/$USER/.composer/vendor/bin/cgr"
url="https://github.com/consolidation/cgr"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    composer global require consolidation/cgr
    printf "\n"
fi


# PHP Code Sniffer
name="PHP Code Sniffer"
check="/Users/$USER/.composer/vendor/squizlabs/php_codesniffer"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    composer global require "squizlabs/php_codesniffer=*"
    printf "\n"
fi


# PHP CS Fixer
name="PHP CS Fixer"
check="/Users/$USER/.composer/vendor/friendsofphp/php-cs-fixer"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    composer global require friendsofphp/php-cs-fixer
    printf "\n"
fi
