#!/bin/sh

#===================================================================================
# NVM Install Script - https://github.com/creationix/nvm/
#===================================================================================

# setup
name="NVM"
check="/Users/$USER/.nvm"

# Check if installed
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
    exit 1;
fi

# Install NVM v0.31.7
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash

# The following lines SHOULD be added to ~/.zshrc
#export NVM_DIR="/usr/local/opt/nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Wrap it up
printf "\n\n"