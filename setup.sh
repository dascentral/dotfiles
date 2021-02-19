#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

abort "Need to refactor following the inclusion of the Brewfile. Logic has changed."

#============================================================================
# PHP 7.4
#============================================================================
if [ -e /usr/local/bin/php ]; then
    info "PHP 7.4 has already been installed."
else
    info "Installing PHP 7.4."
    brew install php@7.4
    brew link php@7.4 --force
    printf "\n\n"
fi


#============================================================================
# Homebrew
#============================================================================
if [ -e /usr/local/bin/brew ]; then
    info "Homebrew has already been installed."
else
    info "Installing Homebrew."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    printf "\n\n"
fi


#============================================================================
# Composer
#============================================================================
# Composer is now installed via the Brewfile
#if [ -e /usr/local/bin/composer ]; then
#    info "Composer has already been installed."
#else
#    info "Installing Composer."
#    php -r "readfile('https://getcomposer.org/installer');" | sudo php -- --install-dir=/usr/local/bin/ --filename=composer
#    sudo chown ${USER} ~/.composer
#    printf "\n\n"
#fi


#===================================================================================
# Aliases
#===================================================================================
if [ -e ~/.aliases ]; then
    info "Aliases have already been installed."
else
    /Users/${USER}/dotfiles/install/aliases.sh
fi
