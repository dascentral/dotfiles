#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

if [ ! -e "/usr/local/bin/composer" ]; then
    abort "Composer is not available. Aborting execution."
fi

# Composer self-update
info "Composer self-update"
/usr/local/bin/composer self-update
printf "\n"
