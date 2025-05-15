#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# configure paths
LOCALPATH="${HOME}/Library/Application Support/Cursor/User"
CLOUDPATH="${DOTFILES}/settings/Cursor/User"
CLI="/usr/local/bin/cursor"

if [ ! -e "/Applications/Cursor.app" ]; then
    abort "Cursor has not been installed.\n"
fi

if [ ! -e "${CLI}" ]; then
    abort "Cursor command line utility is not available.\n"
fi

# create the local User folder
mkdir -pv "${LOCALPATH}"

info "Creating symbolic links for Cursor settings."
declare -a links=(
    "settings.json"
    "keybindings.json"
    "snippets"
)
for item in ${links[@]}; do
    if [ ! -L "${LOCALPATH}/${item}" ]; then
        rm -rf "${LOCALPATH}/${item}"
        ln -s "${CLOUDPATH}/${item}" "${LOCALPATH}/${item}"
        success "${item} - linked"
    else
        line "${item} - already linked"
    fi
done
printf "\n"

info "Installing Cursor Extensions."
declare -a extensions=(
    # PHP Development
    "calebporzio.better-phpunit"
    "bmewburn.vscode-intelephense-client"
    "mehedidracula.php-namespace-resolver"
    # Laravel Development
    "laravel.vscode-laravel"
    "open-southeners.laravel-pint"
    # Web Development
    "bradlc.vscode-tailwindcss"
    "christian-kohler.path-intellisense"
    "dbaeumer.vscode-eslint"
    "geeksharp.openssl-configuration-file"
    "github.vscode-github-actions"
    "redhat.vscode-yaml"
    "william-voyek.vscode-nginx"
    # Markdown / MDX
    "yzhang.markdown-all-in-one"
    "davidanson.vscode-markdownlint"
    "unifiedjs.vscode-mdx"
    # Utility
    "editorconfig.editorconfig"
    "esbenp.prettier-vscode"
    "irongeek.vscode-env"
    "lucax88x.codeacejumper"
    "mikestead.dotenv"
    "patbenatar.advanced-new-file"
    "sleistner.vscode-fileutils"
    # Themes
    "arcticicestudio.nord-visual-studio-code"
)
for item in ${extensions[@]}; do
    if ! ls ~/.cursor/extensions/${item}* 1> /dev/null 2>&1; then
        cursor --install-extension ${item}
        success "${item} - installed"
    else
        line "${item} - already installed"
    fi
done

printf "\n"
