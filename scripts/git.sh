#!/usr/bin/env bash

source "${HOME}/.dotfiles/lib/config.sh"

info "Linking Git configuration to dotfiles."
if [ ! -L ${HOME}/.gitconfig ]; then
    rm -rf ${HOME}/.gitconfig
    ln -s "${DOTFILES}/config/Git/.gitconfig" "/Users/${USER}/.gitconfig"
    success ".gitconfig - linked"
else
    line ".gitconfig - already linked"
fi

printf "\n"
