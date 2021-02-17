#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

# Start it up
info "Copying aliases into place."

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
