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

# install Cursor extensions
declare -a extensions=(
    # PHP Development
    "calebporzio.better-phpunit"
    "bmewburn.vscode-intelephense-client"
    # Laravel Development
    "mehedidracula.php-namespace-resolver"
    "laravel.vscode-laravel"
    "open-southeners.laravel-pint"
    # Web Development (HTML, CSS, JavaScript)
    "christian-kohler.path-intellisense"
    "bradlc.vscode-tailwindcss"
    "dbaeumer.vscode-eslint"
    # Additional Language Support
    "redhat.vscode-yaml"
    "unifiedjs.vscode-mdx"
    # Utility
    "mikestead.dotenv"
    "editorconfig.editorconfig"
    "patbenatar.advanced-new-file"
    # Themes
    "arcticicestudio.nord-visual-studio-code"
    "esbenp.prettier-vscode"
    # "adrianwilczynski.alpine-js-intellisense"
    # "amiralizadeh9480.laravel-extra-intellisense"
    # "austenc.laravel-blade-spacer"
    # "christian-kohler.npm-intellisense"
    # "cierra.livewire-vscode"
    # "dansysanalyst.pest-snippets"
    # "davidanson.vscode-markdownlint"
    # "dbankier.vscode-quick-select"
    # "eamodio.gitlens"
    # "emeraldwalk.runonsave"
    # "equinusocio.vsc-material-theme"
    # "equinusocio.vsc-material-theme-icons"
    # "formulahendry.code-runner"
    # "geeksharp.openssl-configuration-file"
    # "github.vscode-github-actions"
    # "gitlab.gitlab-workflow"
    # "irongeek.vscode-env"
    # "hashicorp.terraform"
    # "junstyle.php-cs-fixer"
    # "lucax88x.codeacejumper"
    # "mattpocock.ts-error-translator"
    # "mohamedbenhida.laravel-intellisense"
    # "ms-azuretools.vscode-docker"
    # "ms-vscode.cpptools-extension-pack"
    # "ms-vscode-remote.remote-containers"
    # "neilbrayfield.php-docblocker"
    # "nikitakunevich.snippet-creator"
    # "onecentlin.laravel-blade"
    # "ryannaddy.laravel-artisan"
    # "silvenon.mdx"
    # "sleistner.vscode-fileutils"
    # "smlombardi.slime"
    # "stylelint.vscode-stylelint"
    # "sysoev.language-stylus"
    # "vscode-icons-team.vscode-icons"
    # "vue.volar"
    # "william-voyek.vscode-nginx"
    # "wix.vscode-import-cost"
    # "yzhang.markdown-all-in-one"
)

info "Installing Cursor Extensions."
for item in ${extensions[@]}; do
    if ! ls ~/.cursor/extensions/${item}* 1> /dev/null 2>&1; then
        cursor --install-extension ${item}
        success "${item} - installed"
    else
        line "${item} - already installed"
    fi
done

printf "\n"
