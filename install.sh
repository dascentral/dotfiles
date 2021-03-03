#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

# Ash for password before we begin
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###########################################################################################
# BEGIN installation

/Users/${USER}/dotfiles/install/homebrew.sh
/Users/${USER}/dotfiles/install/composer.sh

# END installations
###########################################################################################
# BEGIN configurations

/Users/${USER}/dotfiles/config/iterm2.sh
/Users/${USER}/dotfiles/config/php.sh
/Users/${USER}/dotfiles/config/vscode.sh

# END configurations
###########################################################################################
