#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

# Ash for password before we begin
#sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Homebrew Installation
/Users/${USER}/dotfiles/install/homebrew.sh

# PHP Installation
#/Users/${USER}/dotfiles/install/php.sh

# Brew bundle
/Users/${USER}/dotfiles/install/bundle.sh

# Link PHP binaries
info "\nLinking PHP 7.4 binaries."
brew link php@7.4 --force

# Composer Installations
/Users/${USER}/dotfiles/install/composer.sh

abort "I believe this next step will fail because VS Code has not been configured."

# VS Code installations
/Users/${USER}/dotfiles/install/vscode.sh
