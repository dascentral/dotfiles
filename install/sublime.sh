#!/bin/sh

#===================================================================================
# Sublime Text
#===================================================================================

printf "\033[1mInstalling Sublime Text items...\033[0m\n"

# Preferences
printf "\033[33mPreferences\033[0m\n"
cp /Users/$USER/Workspace/dotfiles/sublime/preferences/Preferences.sublime-settings /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Key Bindings
printf "\033[33mKey Bindings\033[0m\n"
cp /Users/$USER/Workspace/dotfiles/sublime/preferences/Default\ \(OSX\).sublime-keymap /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Snippets
printf "\033[33mSnippets\033[0m\n"
rm /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets/*.sublime-snippet
cp /Users/$USER/Workspace/dotfiles/sublime/snippets/* /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets

# PHP Companion
printf "\033[33mPHP Companion Settings\033[0m\n"
cp /Users/$USER/Workspace/dotfiles/sublime/preferences/PHP\ Companion.sublime-settings /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# PHP CS Fixer
printf "\033[33mPHP CS Fixer Settings\033[0m\n"
cp /Users/$USER/Workspace/dotfiles/sublime/preferences/SublimePhpCsFixer.sublime-settings /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
sed -i '.original' "s/USERNAME/$USER/g" /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimePhpCsFixer.sublime-settings

# Wrap it up
printf "\n\n"
