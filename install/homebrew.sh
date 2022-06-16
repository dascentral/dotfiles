#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

if ! homebrew_installed; then
    info "Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    printf "\n\n"
fi

if [ ! -e "Brewfile" ]; then
    abort "There is no Brewfile within this folder."
fi

info "Executing Brewfile"
brew bundle
printf "\n"
