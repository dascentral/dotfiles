#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# install Oh My Zsh
if [ ! -e ~/.oh-my-zsh ]; then
    info "Installing Oh My Zsh."
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
else
    warn "Installing Oh My Zsh... already installed"
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
    else
        warn "Installing Zsh plugin - ${plugin}... already installed"
    fi
done

# custom install due to custom naming convention
source="https://github.com/jessarcher/zsh-artisan.git"
plugin="artisan"
if [ ! -e ${plugin} ]; then
    info "Installing Zsh plugin - jessarcher/zsh-artisan"
    git clone ${source} ${plugin}
    printf "\n"
else
    warn "Installing Zsh plugin - jessarcher/zsh-artisan... already installed"
fi

# create symbolic link to .zshrc
if [ ! -L ~/.zshrc ]; then
    info "Linking .zshrc to dotfiles"
    rm -rf /Users/${USER}/.zshrc
    ln -s "${HOME}/.dotfiles/shell/.zshrc" "/Users/${USER}/.zshrc"
    printf "\n"
else
    warn "Linking .zshrc to dotfiles... already linked"
fi

printf "\n"
