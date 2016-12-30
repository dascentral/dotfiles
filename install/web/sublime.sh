#!/bin/sh

#===================================================================================
# Sublime Text 3 Customizations - https://rvm.io/rvm/install
#===================================================================================

# Install Sublime Text 3 items
printf "\033[1mUpdating Sublime Text 3 preferences, builds, and snippets...\033[0m"
cp sublime/preferences/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
cp -R sublime/builds ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
cp -R sublime/snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
if [ ! -e "/usr/local/bin/subl" ]; then
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi
printf "\033[1m complete.\033[0m"

# Wrap it up
printf "\n\n"