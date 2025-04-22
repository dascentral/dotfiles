#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# Ash for password before we begin
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# confirm ability to run this script
./scripts/confirm.sh

# first run scripts
./scripts/oh-my-zsh.sh

# sudo chown ${USER} /usr/local/bin

# second run scripts
./scripts/homebrew.sh
./scripts/git.sh
./scripts/ssh.sh
./scripts/mackup.sh
./scripts/vscode.sh
./scripts/cursor.sh
./scripts/composer.sh
./scripts/sublime.sh

# TODO: The Mackup script only configures Mackup.Determine when/how to run "mackup restore -v -f"
