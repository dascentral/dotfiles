#!/bin/sh

#===================================================================================
# PHP 7.1 Xdebug
#===================================================================================

# setup
name="PHP 7.1 Xdebug"
check="/usr/local/Cellar/php71-xdebug"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew install php71-xdebug

    # Ensure the extension is loaded
    printf "xdebug.remote_enable=1" >> /usr/local/etc/php/7.1/conf.d/ext-xdebug.ini
    printf "\n\n"
fi
