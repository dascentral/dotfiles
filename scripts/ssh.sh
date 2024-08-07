#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

if [ -e "${PRIVATE}" ]; then
    info "Linking SSH configuration to the private dotfiles."
    if [ ! -L ${HOME}/.ssh/config ]; then
        rm -rf ${HOME}/.ssh/config
        ln -s "${HOME}/.private/config/ssh/config" "${HOME}/.ssh/config"
        success ".gitconfig - linked"
    else
        line ".gitconfig - already linked"
    fi

    printf "\n"
fi
