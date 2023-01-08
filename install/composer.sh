#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# composer should have been installed via "brew bundle"
confirm_composer_installed

# update composer
info "Composer self-update"
composer self-update
printf "\n"

# install global packages
declare -a extensions=(
    "dascentral/hubflow-release"
    "laravel/installer"
    "laravel/pint"
    "laravel/valet"
    "spatie/global-ray"
    "tightenco/takeout"
)

for extension in ${extensions[@]}; do
    parts=(`echo $extension | tr '/' ' '`)
    if [ ! -e "/Users/${USER}/.composer/vendor/${parts[0]}/${parts[1]}" ]; then
        info "Installing $extension"
        composer global require $extension
        printf "\n"
    fi
done

# one-off package installation
# if [ ! -e "/Users/${USER}/.composer/vendor/squizlabs/php_codesniffer" ]; then
#     info "Installing squizlabs/php_codesniffer"
#     composer global require "squizlabs/php_codesniffer=*"
#     printf "\n"
# fi
