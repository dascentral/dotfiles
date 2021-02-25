#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

# configure location of User folder
#basepath="/Users/${USER}/Library/Application\ Support/Code/User2"

# create the User folder
mkdir -pv "/Users/${USER}/Library/Application Support/Code/User"

# replace local settings with those in this repository
if [ ! -L "/Users/${USER}/Library/Application Support/Code/User/settings.json" ]; then
    rm -rf /Users/${USER}/Library/Application\ Support/Code/User/settings.json
    ln -s /Users/${USER}/dotfiles/settings/VSCode/User/settings.json /Users/${USER}/Library/Application\ Support/Code/User/settings.json
    info "VS Code settings linked to repository"
fi

# replace local key bindings with those in this repository
if [ ! -L "/Users/${USER}/Library/Application Support/Code/User/keybindings.json" ]; then
    rm -rf /Users/${USER}/Library/Application\ Support/Code/User/keybindings.json
    ln -s /Users/${USER}/dotfiles/settings/VSCode/User/keybindings.json /Users/${USER}/Library/Application\ Support/Code/User/keybindings.json
    info "VS Code key bindings linked to repository"
fi

# replace local snippets with those in this repository
# if [ -L "/Users/${USER}/Library/Application\ Support/Code/User/snippets" ]; then
#     info "snippets folder exists"
# fi
# rm -rf /Users/${USER}/Library/Application\ Support/Code/User/snippets
# ln -s /Users/${USER}/dotfiles/settings/VSCode/User/snippets snippets
