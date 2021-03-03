#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

# confirm app has been installed
if [ ! -e "/Applications/iTerm.app" ]; then
    abort "iTerm2 has not been installed."
fi

# confirm the expected settings location exists
if [ ! -e "/Users/${USER}/GDrive/Documents/Software/iTerm2" ]; then
    abort "iTerm2 settings folder does not exist."
fi

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/GDrive/Documents/Software/iTerm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Don’t display the prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Install and configure Oh My Zsh
${DOTFILES}/config/oh-my-zsh.sh
