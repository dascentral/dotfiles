#!/usr/bin/env bash

# TODO: I believe the settings for iTerm2 are covered by mackup.
# I need to confirm this file, and the reference to my private
# repository, can be deleted.

#source /Users/${USER}/.dotfiles/shell/.functions

# confirm app has been installed
#if [ ! -e "/Applications/iTerm.app" ]; then
#    abort "iTerm2 has not been installed.\n"
#fi

# confirm the expected settings location exists
#if [ ! -e "${PRIVATE}/settings/iTerm2/" ]; then
#    abort "iTerm2 settings folder does not exist.\n"
#fi

#info "Configuring iTerm2"

# Specify the preferences directory
# TODO: Rely upon Mackup
#defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.private/settings/iTerm2"

# Tell iTerm2 to use the custom preferences in the directory
#defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Don’t display the prompt when quitting iTerm
#defaults write com.googlecode.iterm2 PromptOnQuit -bool false

#printf "\n"
