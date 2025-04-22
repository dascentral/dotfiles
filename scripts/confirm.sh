#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

clean=true

info "Checking system readiness."
printf "\n"

if ! fc-list | grep -q "Fira Code"; then
    warn "⚠️ Fira Code font is not installed."
    clean=false
else
    success "✅ Fira Code font is installed."
fi

if [ ! -f "${DOTFILES}/Brewfile" ]; then
    warn "⚠️ Brewfile not found in the dotfiles root."
    clean=false
else
    success "✅ Brewfile exists in root directory."
fi

printf "\n"

if [ "$clean" = false ]; then
    info "Please resolve warnings to continue."
    exit 1
fi

exit 0
