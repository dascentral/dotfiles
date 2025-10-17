#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/config.sh

if [ -e "${PRIVATE}" ]; then
    info "Linking SSH configuration to the private dotfiles."
    if [ ! -L ${HOME}/.ssh/config ]; then
        rm -rf ${HOME}/.ssh/config
        ln -s "${HOME}/${PRIVATE}/config/ssh/config" "${HOME}/.ssh/config"
        success "~/.ssh/config - linked"
    else
        line "~/.ssh/config - already linked"
    fi

    printf "\n"
fi
