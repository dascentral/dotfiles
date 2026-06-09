#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/config.sh

dotfiles_live_where_expected

dotfiles_confirm_stable

clear

# Ash for password before we begin
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# confirm ability to run this script
${DOTFILES}/scripts/check.sh || exit 1

# TODO: sudo chown ${USER} /usr/local/bin

${DOTFILES}/scripts/homebrew.sh
${DOTFILES}/scripts/composer.sh
${DOTFILES}/scripts/git.sh
${DOTFILES}/scripts/ssh.sh
${DOTFILES}/scripts/mackup.sh
${DOTFILES}/scripts/cursor.sh
${DOTFILES}/scripts/vscode.sh
${DOTFILES}/scripts/sublime.sh
${DOTFILES}/scripts/macos.sh
${DOTFILES}/scripts/claude.sh

# TODO: The Mackup script only configures Mackup. Determine when/how to run "mackup restore -v -f"
