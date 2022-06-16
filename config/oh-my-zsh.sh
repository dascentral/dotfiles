#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

if [ ! -e ~/.oh-my-zsh ]; then
    abort "Oh My Zsh has not been installed.\n"
fi

# install plugins
cd $HOME/.oh-my-zsh/custom/plugins
declare -a links=(
    "https://github.com/zsh-users/zsh-autosuggestions"
    "https://github.com/zsh-users/zsh-syntax-highlighting"
)
for url in ${links[@]}; do
    parts=(`echo ${url} | tr '/' ' '`)
    plugin=${parts[${#parts[@]}-1]}
    if [ ! -e ${plugin} ]; then
        info "Installing Zsh plugin - ${plugin}"
        git clone ${url}
        printf "\n"
    fi
done

# custom install due to custom naming convention
source="https://github.com/jessarcher/zsh-artisan.git"
plugin="artisan"
if [ ! -e ${plugin} ]; then
    info "Installing Zsh plugin - jessarcher/zsh-artisan"
    git clone ${source} ${plugin}
    printf "\n"
fi

# create symbolic link to .zshrc
if [ ! -L ~/.zshrc ]; then
    info "Linking .zshrc to dotfiles"
    rm -rf /Users/${USER}/.zshrc
    ln -s "${DOTFILES}/shell/.zshrc" "/Users/${USER}/.zshrc"
    printf "\n"
fi
