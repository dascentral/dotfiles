#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

if [ ! -e "Brewfile" ]; then
    abort "There is no Brewfile within this folder."
fi

info "Executing Brewfile"
brew bundle
