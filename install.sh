#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

# Ash for password before we begin
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###########################################################################################
# BEGIN installation

${DOTFILES}/install/homebrew.sh
${DOTFILES}/install/composer.sh

# END installations
###########################################################################################
# BEGIN configurations

${DOTFILES}/config/iterm2.sh
${DOTFILES}/config/php.sh
${DOTFILES}/config/vscode.sh

# END configurations
###########################################################################################
