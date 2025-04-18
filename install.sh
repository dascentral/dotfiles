#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# Ash for password before we begin
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# run scripts
./scripts/oh-my-zsh.sh
exit

# ./scripts/homebrew.sh
# ./scripts/composer.sh
# ./scripts/mackup.sh

# TODO: Determine when/how to run "mackup restore -v -f"

# ./scripts/sublime.sh
# ./scripts/vscode.sh
# ./scripts/git.sh
# ./scripts/ssh.sh
