#!/usr/bin/env bash

source "${HOME}/.dotfiles/lib/config.sh"

LOCALPATH="${HOME}/.claude"
CLOUDPATH="${DOTFILES}/config/Claude"

info "Creating symbolic links for Claude Code configuration."
mkdir -p "${LOCALPATH}"
declare -a links=(
    "settings.json"
    "statusline.sh"
)
for item in "${links[@]}"; do
    if [ ! -L "${LOCALPATH}/${item}" ]; then
        rm -rf "${LOCALPATH}/${item}"
        ln -s "${CLOUDPATH}/${item}" "${LOCALPATH}/${item}"
        success "${item} - linked"
    else
        line "${item} - already linked"
    fi
done
printf "\n"
