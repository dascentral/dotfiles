#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

confirm_composer_installed

info "Composer self-update"
/usr/local/bin/composer self-update
printf "\n"
