#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/functions.sh

# configure paths
LOCALPATH="${HOME}/Library/Application Support/Code/User"
CLOUDPATH="${DOTFILES}/settings/VSCode/User"
CLIA="/opt/homebrew/bin/code"
CLIB="/usr/local/bin/code"

# confirm app has been installed
if [ ! -e "/Applications/Visual Studio Code.app" ]; then
    abort "Visual Studio Code has not been installed.\n"
fi

# confirm command line utility is available
if [ ! -e "${CLIA}" ] && [ ! -e "${CLIB}" ]; then
    abort "VS Code command line utility is not available.\n"
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


info "Installing VS Code Extensions."
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
    "github.copilot"
    "irongeek.vscode-env"
    "lucax88x.codeacejumper"
    "mikestead.dotenv"
    "patbenatar.advanced-new-file"
    "sleistner.vscode-fileutils"
    # Themes
    "arcticicestudio.nord-visual-studio-code"
    # Legacy
    # "adrianwilczynski.alpine-js-intellisense"
    # "amiralizadeh9480.laravel-extra-intellisense"
    # "austenc.laravel-blade-spacer"
    # "christian-kohler.npm-intellisense"
    # "cierra.livewire-vscode"
    # "dansysanalyst.pest-snippets"
    # "dbankier.vscode-quick-select"
    # "eamodio.gitlens"
    # "emeraldwalk.runonsave"
    # "equinusocio.vsc-material-theme"
    # "equinusocio.vsc-material-theme-icons"
    # "formulahendry.code-runner"
    # "gitlab.gitlab-workflow"
    # "hashicorp.terraform"
    # "junstyle.php-cs-fixer"
    # "mattpocock.ts-error-translator"
    # "mohamedbenhida.laravel-intellisense"
    # "ms-azuretools.vscode-docker"
    # "ms-vscode.cpptools-extension-pack"
    # "ms-vscode-remote.remote-containers"
    # "neilbrayfield.php-docblocker"
    # "nikitakunevich.snippet-creator"
    # "onecentlin.laravel-blade"
    # "ryannaddy.laravel-artisan"
    # "sleistner.vscode-fileutils"
    # "smlombardi.slime"
    # "sysoev.language-stylus"
    # "vscode-icons-team.vscode-icons"
    # "wix.vscode-import-cost"
)
for item in ${extensions[@]}; do
    if ! ls ~/.vscode/extensions/${item}* 1> /dev/null 2>&1; then
        code --install-extension ${item}
        success "${item} - installed"
    else
        line "${item} - already installed"
    fi
done
printf "\n"
