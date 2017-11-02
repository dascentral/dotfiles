#!/bin/sh

#===================================================================================
# macOS Setup Script - macOS
#===================================================================================
#
# DESCRIPTION
# Script that gets macOS ready for use.
#
# PARAMETERS
# - N/A
#
# ACTIONS PERFORMED
# - Turns on the Keychain for SSH activities
#
# ASSUMPTIONS
# - N/A
#
#===================================================================================

printf "\n"

printf "\033[1;33mTurning on 'AddKeysToAgent' for SSH activities.\n\033[0m"
cp /Users/${USER}/Workspace/dotfiles/setup/macOS/config /Users/${USER}/.ssh
printf "\n"
