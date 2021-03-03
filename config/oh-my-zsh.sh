#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

abort "WIP"
exit 0;

# install Oh My Zsh
if [ ! -e ~/.oh-my-zsh ]; then
    exit 0;
    info "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


# source
source ~/.zshrc
