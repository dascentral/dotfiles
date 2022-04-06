#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

# Pull the latest from Git - dotfiles-private
if [ -e "${PRIVATE}" ]; then
    info "Pulling latest from Git: ${PRIVATE}"
    cd ${PRIVATE}
    git reset HEAD --hard
    git pull
    printf "\n"
fi

# Pull the latest from Git - dotfiles
info "Pulling latest from Git: ${DOTFILES}"
cd ${DOTFILES}
git reset HEAD --hard
git pull
printf "\n"
