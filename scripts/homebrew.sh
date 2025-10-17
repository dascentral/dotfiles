#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/functions.sh

if ! homebrew_installed; then
    # Homebrew Installation
    info "Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    printf "\n\n"

    info "Executing Brewfile"
    brew bundle --file ${DOTFILES}/Brewfile
    printf "\n\n"
else
    # Homebrew Maintenance
    info "Brew upgrade."
    brew upgrade
    printf "\n"

    info "Brew update."
    brew update
    printf "\n"

    info "Brew cleanup."
    brew cleanup
    printf "\n"

    info "Brew doctor."
    brew doctor
    printf "\n"
fi
