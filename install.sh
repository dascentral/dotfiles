#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

# Ash for password before we begin
#sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Homebrew Installation
/Users/${USER}/dotfiles/install/homebrew.sh

# Link PHP binaries
/Users/${USER}/dotfiles/bin/phpv php@7.4

# Composer Installations
/Users/${USER}/dotfiles/install/composer.sh
