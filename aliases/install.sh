#!/bin/sh

#===================================================================================
# Alias Installlation
#===================================================================================

# Start it up
printf "\033[1;37mInstalling aliases.\033[0m"

# Copy into place
cp /Users/$USER/dotfiles/aliases/aliases /Users/$USER/.aliases

# Include any custom aliases stored locally
if [ -e "/Users/$USER/.aliases-local" ]; then
    cat /Users/$USER/.aliases-local >> /Users/$USER/.aliases
fi

# Wrap it up
printf "\n\n"
