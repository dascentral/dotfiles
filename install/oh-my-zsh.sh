#!/bin/sh

#===================================================================================
# Oh My Zsh - https://github.com/robbyrussell/oh-my-zsh
#===================================================================================

# setup
name="Oh My Zsh"
check="/Users/$USER/.oh-my-zsh"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;33mInstalling $name...\033[0m\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Wrap it up
printf "\n\n"
