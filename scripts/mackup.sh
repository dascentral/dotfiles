#!/usr/bin/env bash

source "${HOME}/.dotfiles/lib/config.sh"

info "Linking Mackup configuration to dotfiles."
if [ ! -L ~/.mackup.cfg ]; then
    rm -rf ${HOME}/.mackup.cfg
    ln -s "${DOTFILES}/.mackup.cfg" "${HOME}/.mackup.cfg"
    success ".mackup.cfg - linked"
else
    line ".mackup.cfg - already linked"
fi

printf "\n"
