#!/usr/bin/env bash

source "${HOME}/.dotfiles/lib/config.sh"

# While I am happy to share my dotfiles with the world, I keep
# a few sensitive items within another private repository.
if [ -e "${PRIVATE}" ]; then
    info "Pulling latest from Git: ${PRIVATE}"
    cd "${PRIVATE}" || abort "Could not enter ${PRIVATE}"
    git pull
    printf "\n"
fi

info "Pulling latest from Git: ${DOTFILES}"
cd "${DOTFILES}" || abort "Could not enter ${DOTFILES}"
git pull
printf "\n"
