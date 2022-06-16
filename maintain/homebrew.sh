#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

confirm_homebrew_installed

# Homebrew Upgrade
info "Brew upgrade."
brew upgrade
printf "\n"

# Homebrew Update
info "Brew update."
brew update
printf "\n"

# Homebrew cleanup
info "Brew cleanup."
brew cleanup
printf "\n"

# Homebrew doctor
info "Brew doctor."
brew doctor
printf "\n"
