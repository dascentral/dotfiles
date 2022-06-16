#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

confirm_composer_installed

info "Composer self-update"
/opt/homebrew/bin/composer self-update
printf "\n"
