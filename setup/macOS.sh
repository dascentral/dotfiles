#!/bin/sh

#===================================================================================
# macOS Setup Script - macOS
#===================================================================================

printf "\n"

# Turn on Keychain for SSH
printf "\033[1;37mTurning on 'AddKeysToAgent' for SSH activities.\n\033[0m"
cp /Users/${USER}/Workspace/dotfiles/setup/macOS/config /Users/${USER}/.ssh
printf "\n"
