#!/usr/bin/env bash

source "${HOME}/.dotfiles/lib/config.sh"

info "Linking Git configuration to dotfiles."
if [ ! -L ${HOME}/.gitconfig ]; then
    rm -rf ${HOME}/.gitconfig
    ln -s "${DOTFILES}/config/Git/.gitconfig" "${HOME}/.gitconfig"
    success ".gitconfig - linked"
else
    line ".gitconfig - already linked"
fi

if [ ! -L ${HOME}/.gitignore_global ]; then
    rm -f ${HOME}/.gitignore_global
    ln -s "${DOTFILES}/config/Git/.gitignore_global" "${HOME}/.gitignore_global"
    success ".gitignore_global - linked"
else
    line ".gitignore_global - already linked"
fi

printf "\n"
