#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

# Confirm necessary software is installed
if [ ! -e "/usr/local/bin/brew" ]; then
    abort "Homebrew has not been installed. Aborting installation."
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
