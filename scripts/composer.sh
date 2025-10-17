#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/config.sh

# TODO: IF composer does not exist, output warning and skip execution
# composer should have been installed via "brew bundle"
confirm_composer_installed

info "Composer self-update."
composer self-update
printf "\n"

info "Installing global Composer packages."
declare -a packages=(
    "dascentral/hubflow-release"
    "laravel/installer"
    "laravel/pint"
    "laravel/valet"
    "spatie/global-ray"
    "tightenco/takeout"
)
for item in ${packages[@]}; do
    parts=(`echo $item | tr '/' ' '`)
    if [ ! -e "/Users/${USER}/.composer/vendor/${parts[0]}/${parts[1]}" ]; then
        composer global require ${item}
        success "${item} - installed"
    else
        line "${item} - already installed"
    fi
done

printf "\n"
