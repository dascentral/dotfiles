#!/usr/bin/env bash

#============================================================================
# Homebrew
#============================================================================
if [ -e /usr/local/bin/brew ]; then
    printf "\n\033[1;37mHomebrew has already been installed.\033[0m\n\n"
else
    printf "\n\033[1;37mInstalling Homebrew.\033[0m\n"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    printf "\n\n"
fi


#============================================================================
# PHP
#============================================================================
if [ -e /usr/local/bin/php ]; then
    printf "\n\033[1;37mPHP has already been installed.\033[0m\n\n"
else
    printf "\n\033[1;37mInstalling PHP 7.4.\033[0m\n"
    brew install php@7.4
    brew link php@7.4 --force
    printf "\n\n"
fi


#============================================================================
# Composer
#============================================================================
if [ -e /usr/local/bin/composer ]; then
    printf "\n\033[1;37mComposer has already been installed.\033[0m\n\n"
else
    printf "\n\033[1;37mInstalling Composer.\033[0m\n"
    php -r "readfile('https://getcomposer.org/installer');" | sudo php -- --install-dir=/usr/local/bin/ --filename=composer
    sudo chown ${USER} ~/.composer
    printf "\n\n"
fi
