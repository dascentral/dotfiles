#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

# install Oh My Zsh
if [ ! -e ~/.oh-my-zsh ]; then
    info "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    printf "\n"
fi

# create symbolic link to .zshrc
if [ ! -L ~/.zshrc ]; then
    info "Linking .zshrc to dotfiles"
    rm -rf /Users/${USER}/.zshrc
    ln -s "${DOTFILES}/shell/.zshrc" "/Users/${USER}/.zshrc"
    printf "\n"
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
