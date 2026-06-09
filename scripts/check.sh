#!/usr/bin/env bash

source "${HOME}/.dotfiles/lib/config.sh"

clean=true

info "Checking system readiness."
printf "\n"

if ! install_check_brewfile; then
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
