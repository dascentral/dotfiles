#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/config.sh

info "Installing Oh My Zsh."
if [ ! -e ~/.oh-my-zsh ]; then
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
    success "Installation complete."
    installed=1
else
    line "Already installed."
    installed=0
fi
printf "\n"


info "Installing Zsh plugins."
cd $HOME/.oh-my-zsh/custom/plugins
declare -a links=(
    "https://github.com/zsh-users/zsh-autosuggestions"
    "https://github.com/zsh-users/zsh-syntax-highlighting"
    "https://github.com/jasonmccreary/git-trim"
)
for url in ${links[@]}; do
    parts=(`echo ${url} | tr '/' ' '`)
    plugin=${parts[${#parts[@]}-1]}

    if [ ! -e ${plugin} ]; then
        git clone ${url}
        success "${plugin} - installed"
        # printf "\n"
    else
        line "${plugin} - already installed"
    fi
done


# custom install due to custom naming convention
source="https://github.com/jessarcher/zsh-artisan.git"
plugin="artisan"
if [ ! -e ${plugin} ]; then
    git clone ${source} ${plugin}
    success "jessarcher/zsh-artisan - installed"
else
    line "jessarcher/zsh-artisan - already installed"
fi
printf "\n"


info "Creating symbolic link for Zsh config."
if [ ! -L ~/.zshrc ]; then
    rm -rf /Users/${USER}/.zshrc
    ln -s "${HOME}/.dotfiles/shell/.zshrc" "/Users/${USER}/.zshrc"
    success "Symbolic link created"
else
    line "Already linked."
fi
printf "\n"


if [ $installed -eq 1 ]; then
    info "Oh My Zsh was just installed. You will want to exit this shell and restart your terminal app."
    printf "\n"
fi
