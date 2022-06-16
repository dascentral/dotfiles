#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

if ! homebrew_installed; then
    info "Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    printf "\n\n"
else
    warn "Installing Homebrew... already installed"
fi

info "Executing Brewfile"
brew bundle --file $DOTFILES/Brewfile
printf "\n"
