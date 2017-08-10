#!/bin/sh

#===================================================================================
# Sublime Text
#===================================================================================

printf "\033[1mInstalling Sublime Text items...\033[0m"

# Preferences
cp sublime/preferences/Preferences.sublime-settings /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# PHP Companion
cp sublime/preferences/PHP\ Companion.sublime-settings /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Key Bindings
cp sublime/preferences/Default\ (OSX).sublime-keymap /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Snippets
rm /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets/*.sublime-snippet
cp sublime/snippets/* /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets

# Wrap it up
printf "\033[1m complete.\033[0m"
printf "\n\n"
