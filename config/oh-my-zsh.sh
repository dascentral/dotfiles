#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

abort "WIP"
exit 0;

# install Oh My Zsh
if [ ! -e ~/.oh-my-zsh ]; then
    info "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# add symbolic link to .zshrc
if [ ! -L ~/.zshrc ]; then
    info "Linking .zshrc to dotfiles"
    rm -rf /Users/${USER}/.zshrc
    ln -s "${DOTFILES}/shell/.zshrc" "/Users/${USER}/.zshrc"
fi

# install plugins
declare -a links=(
    "https://github.com/zsh-users/zsh-autosuggestions"
    "https://github.com/zsh-users/zsh-syntax-highlighting"
)
cd $HOME/.oh-my-zsh/custom/plugins
for url in ${links[@]}; do
    # parse URL and only execute if folder does not exist
    info "Installing Zsh plugin - ${url}"
    git clone ${url}
done
