#!/bin/sh

#===================================================================================
# Composer - https://getcomposer.org/download/
#===================================================================================

# setup
name="Composer"
check="/usr/local/bin/composer"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37mComposer self-update.\033[0m\n"
    /usr/local/bin/composer self-update
else
    printf "\033[1;37mInstalling $name...\033[0m\n"
    php -r "readfile('http://getcomposer.org/installer');" | sudo php -- --install-dir=/usr/local/bin/ --filename=composer
fi

# Wrap it up
printf "\n"
