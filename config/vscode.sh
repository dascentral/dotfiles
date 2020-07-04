#!/usr/bin/env bash

# at this time, this script is NOT idempotent
if [ -e /Users/${USER}/Library/Application\ Support/Code/User ]; then
    printf "\n\033[1;37mVisual Studio code has already been configured.\033[0m\n\n"
    exit 0;
fi


# Ensure we have a user folder
mkdir /Users/${USER}/Library/Application\ Support/Code/User


# Configure for use of cloud-stored settings
rm /Users/${USER}/Library/Application\ Support/Code/User/settings.json
rm /Users/${USER}/Library/Application\ Support/Code/User/keybindings.json
rm -rf /Users/${USER}/Library/Application\ Support/Code/User/snippets
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/settings.json settings.json
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/keybindings.json keybindings.json
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/snippets snippets
