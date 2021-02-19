#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

if [ ! -e /usr/local/bin/brew ]; then
    info "Installing Homebrew."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    printf "\n\n"
fi
