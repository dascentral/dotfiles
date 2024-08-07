#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# Ash for password before we begin
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# run scripts
${DOTFILES}/scripts/oh-my-zsh.sh
${DOTFILES}/scripts/homebrew.sh
${DOTFILES}/scripts/composer.sh
${DOTFILES}/scripts/mackup.sh
# TODO: Determine when/how to run "mackup restore -v -f"
${DOTFILES}/scripts/sublime.sh
${DOTFILES}/scripts/vscode.sh
${DOTFILES}/scripts/git.sh
${DOTFILES}/scripts/ssh.sh
