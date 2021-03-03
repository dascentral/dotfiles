#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

if [ ! -e /usr/local/bin/brew ]; then
    info "Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    printf "\n\n"
fi

if [ ! -e "Brewfile" ]; then
    abort "There is no Brewfile within this folder."
fi

info "Executing Brewfile"
brew bundle
printf "\n"
