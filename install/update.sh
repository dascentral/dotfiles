#!/bin/sh

#===================================================================================
# dotfiles update script
#===================================================================================

# Clear the screen
clear

# Get the latest from master
printf "\033[1m1) Updating Master Branch.\033[0m\n"
git reset HEAD --hard
git checkout master
git pull

# Put /usr/local/bin scripts into place
printf "\n\033[1m2) Copying scripts to /usr/local/bin.\033[0m\n\n"
cp bin/* /usr/local/bin

# Install Sublime Text 3 items
printf "\033[1m3) Updating Sublime Text 3 preferences, builds, and snippets.\033[0m\n\n"
cp sublime/preferences/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
cp -R sublime/builds ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
cp -R sublime/snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
if [ ! -e "/usr/local/bin/subl" ]; then
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi

printf "\033[32mComplete!\033[0m\n"
