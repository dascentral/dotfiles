#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

if [ ! -e "/usr/local/bin/composer" ]; then
    abort "Composer has not been installed. Aborting installation."
fi

declare -a extensions=(
    "dascentral/hubflow-release"
    "friendsofphp/php-cs-fixer"
    "laravel/installer"
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
if [ ! -e "/Users/${USER}/.composer/vendor/squizlabs/php_codesniffer" ]; then
    info "Installing squizlabs/php_codesniffer"
    composer global require "squizlabs/php_codesniffer=*"
    printf "\n"
fi
