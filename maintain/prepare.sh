#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# While I am happy to share my dotfiles with the world, I maintain
# a few sensitive items within a separate private repository.
if [ -e "${PRIVATE}" ]; then
    info "Pulling latest from Git: ${PRIVATE}"
    cd ${PRIVATE}
    git reset HEAD --hard
    git pull
    printf "\n"
fi

info "Pulling latest from Git: ${DOTFILES}"
cd ${DOTFILES}
git reset HEAD --hard
git pull
printf "\n"
