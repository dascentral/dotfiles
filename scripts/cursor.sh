#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# configure paths
LOCALPATH="${HOME}/Library/Application Support/Cursor/User"
CLOUDPATH="${DOTFILES}/settings/Cursor/User"
CLI="/usr/local/bin/cursor"

# confirm app has been installed
if [ ! -e "/Applications/Cursor.app" ]; then
    abort "Cursor has not been installed.\n"
fi

# confirm command line utility is available
if [ ! -e "${CLI}" ]; then
    abort "Cursor command line utility is not available.\n"
fi

# create the local User folder
mkdir -pv "${LOCALPATH}"

# create symbolic links for application settings
info "Creating symbolic links for VS Code settings."
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
    "arcticicestudio.nord-visual-studio-code"
    "bmewburn.vscode-intelephense-client"
    "bradlc.vscode-tailwindcss"
    "calebporzio.better-phpunit"
    "dbaeumer.vscode-eslint"
    "editorconfig.editorconfig"
    "esbenp.prettier-vscode"
    "github.copilot"
    "irongeek.vscode-env"
    "laravel.vscode-laravel"
    "mehedidracula.php-namespace-resolver"
    "open-southeners.laravel-pint"
    "patbenatar.advanced-new-file"
    # "adrianwilczynski.alpine-js-intellisense"
    # "amiralizadeh9480.laravel-extra-intellisense"
    # "austenc.laravel-blade-spacer"
    # "christian-kohler.npm-intellisense"
    # "christian-kohler.path-intellisense"
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
    # "hashicorp.terraform"
    # "junstyle.php-cs-fixer"
    # "lucax88x.codeacejumper"
    # "mattpocock.ts-error-translator"
    # "mikestead.dotenv"
    # "mohamedbenhida.laravel-intellisense"
    # "ms-azuretools.vscode-docker"
    # "ms-vscode.cpptools-extension-pack"
    # "ms-vscode-remote.remote-containers"
    # "neilbrayfield.php-docblocker"
    # "nikitakunevich.snippet-creator"
    # "onecentlin.laravel-blade"
    # "redhat.vscode-yaml"
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

# info "Installing Cursor Extensions."
for item in ${extensions[@]}; do
    if ! ls ~/.vscode/extensions/${item}* 1> /dev/null 2>&1; then
        cursor --install-extension ${item}
        success "${item} - installed"
    else
        line "${item} - already installed"
    fi
done

printf "\n"
