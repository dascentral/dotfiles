#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

info "Linking Mackup configuration to dotfiles."
if [ ! -L ~/.mackup.cfg ]; then
    rm -rf /Users/${USER}/.mackup.cfg
    ln -s "${HOME}/${DOTFILES}/.mackup.cfg" "/Users/${USER}/.mackup.cfg"
    success ".mackup.cfg - linked"
else
    line ".mackup.cfg - already linked"
fi

printf "\n"
