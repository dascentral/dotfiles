#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/functions.sh

clean=true

info "Checking system readiness."
printf "\n"

if ! install_check_oh_my_zsh; then
    warn "⚠️ Oh My Zsh is not installed."
    clean=false
else
    success "✅ Oh My Zsh is installed."
fi

if ! install_check_brewfile; then
    warn "⚠️ Brewfile not found in the dotfiles root."
    clean=false
else
    success "✅ Brewfile exists in root directory."
fi

if ! install_check_fira_code; then
    warn "⚠️ Fira Code font is not installed."
    clean=false
else
    success "✅ Fira Code font is installed."
fi

printf "\n"

if [ "$clean" = false ]; then
    info "Please resolve warnings to continue."
    exit 1
fi
