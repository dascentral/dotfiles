#!/usr/bin/env bash

source "${HOME}/.dotfiles/lib/config.sh"

# TODO: IF composer does not exist, output warning and skip execution
# composer should have been installed via "brew bundle"
confirm_composer_installed

info "Composer self-update."
composer self-update
printf "\n"

info "Installing global Composer packages."
declare -a packages=(
    "laravel/installer"
    "laravel/pint"
    "laravel/valet"
    "spatie/global-ray"
    "tightenco/takeout"
)
composer_home="${COMPOSER_HOME:-${HOME}/.composer}"
for item in "${packages[@]}"; do
    if [ ! -e "${composer_home}/vendor/${item}" ]; then
        composer global require "${item}"
        success "${item} - installed"
    else
        line "${item} - already installed"
    fi
done

printf "\n"
