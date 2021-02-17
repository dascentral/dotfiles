#!/usr/bin/env bash

#===================================================================================
# Alias Installlation
#===================================================================================

# Start it up
printf "\033[1;37mCopying aliases into place.\033[0m"

# Copy into place
cp /Users/${USER}/dotfiles/shell/.aliases /Users/${USER}/.aliases

# Include any local aliases
if [ -e "/Users/${USER}/.aliases-local" ]; then
    cat /Users/${USER}/.aliases-local >> /Users/${USER}/.aliases
fi

# Include aliases from my private dotfiles repository
if [ -e "/Users/${USER}/dotfiles-private/shell/.aliases" ]; then
    cat /Users/${USER}/dotfiles-private/shell/.aliases >> /Users/${USER}/.aliases
fi

# Wrap it up
printf "\n\n"
