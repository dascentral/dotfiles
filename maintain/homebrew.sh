#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

confirm_homebrew_installed

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
