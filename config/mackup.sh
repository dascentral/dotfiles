#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# create symbolic link
if [ ! -L ~/.mackup.cfg ]; then
    info "Linking .mackup.cfg to dotfiles"
    rm -rf /Users/${USER}/.mackup.cfg
    ln -s "${HOME}/.dotfiles/shell/.mackup.cfg" "/Users/${USER}/.mackup.cfg"
    printf "\n"
else
    warn "Linking .mackup.cfg to dotfiles... already linked"
fi

printf "\n"
