#!/bin/sh

#===================================================================================
# NVM - https://github.com/creationix/nvm/
#===================================================================================

# setup
name="NVM"
check="/Users/$USER/.nvm"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# The following lines SHOULD be added to ~/.zshrc
#export NVM_DIR="/usr/local/opt/nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Wrap it up
printf "\n\n"
