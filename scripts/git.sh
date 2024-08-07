#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

info "Linking Git configuration to dotfiles."
if [ ! -L ${HOME}/.gitconfig ]; then
    rm -rf ${HOME}/.gitconfig
    ln -s "${HOME}/.dotfiles/config/Git/.gitconfig" "/Users/${USER}/.gitconfig"
    success ".gitconfig - linked"
else
    line ".gitconfig - already linked"
fi

printf "\n"
