#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# create symbolic link to .zshrc
if [ ! -L ~/.gitconfig ]; then
    info "Linking .gitconfig to dotfiles"
    rm -rf /Users/${USER}/.gitconfig
    ln -s "${HOME}/.dotfiles/config/Git/.gitconfig" "/Users/${USER}/.gitconfig"
    printf "\n"
else
    warn "Linking .gitconfig to dotfiles... already linked"
fi

printf "\n"
