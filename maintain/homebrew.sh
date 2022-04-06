#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

if [ ! -e /usr/local/bin/brew ]; then
    abort "Homebrew is not available. Aborting execution."
fi

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
