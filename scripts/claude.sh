#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/config.sh

LOCALPATH="${HOME}/.claude"
CLOUDPATH="${DOTFILES}/config/Claude"

info "Creating symbolic links for Claude Code settings."

mkdir -p "${LOCALPATH}"

if [ ! -L "${LOCALPATH}/commands" ]; then
    rm -rf "${LOCALPATH}/commands"
    ln -s "${CLOUDPATH}/commands" "${LOCALPATH}/commands"
    success "commands - linked"
else
    line "commands - already linked"
fi

if [ ! -L "${LOCALPATH}/settings.json" ]; then
    rm -f "${LOCALPATH}/settings.json"
    ln -s "${CLOUDPATH}/settings.json" "${LOCALPATH}/settings.json"
    success "settings.json - linked"
else
    line "settings.json - already linked"
fi

printf "\n"
