#!/bin/sh

# install Oh My Zsh
if [ ! -e ~/.oh-my-zsh ]; then
    info "Installing Oh My Zsh."
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi
