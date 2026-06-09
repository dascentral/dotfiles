#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/config.sh

info "Linking Mackup configuration to dotfiles."
if [ ! -L ~/.mackup.cfg ]; then
    rm -rf /Users/${USER}/.mackup.cfg
    ln -s "${DOTFILES}/.mackup.cfg" "/Users/${USER}/.mackup.cfg"
    success ".mackup.cfg - linked"
else
    line ".mackup.cfg - already linked"
fi

printf "\n"
