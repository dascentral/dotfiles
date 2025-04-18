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


# install VS Code extensions
# declare -a extensions=(
    # "adrianwilczynski.alpine-js-intellisense"
    # "amiralizadeh9480.laravel-extra-intellisense"
    # "arcticicestudio.nord-visual-studio-code"
    # "austenc.laravel-blade-spacer"
    # "bmewburn.vscode-intelephense-client"
    # "bradlc.vscode-tailwindcss"
    # "calebporzio.better-phpunit"
    # "christian-kohler.npm-intellisense"
    # "christian-kohler.path-intellisense"
    # "cierra.livewire-vscode"
    # "dansysanalyst.pest-snippets"
    # "davidanson.vscode-markdownlint"
    # "dbaeumer.vscode-eslint"
    # "dbankier.vscode-quick-select"
    # "eamodio.gitlens"
    # "editorconfig.editorconfig"
    # "emeraldwalk.runonsave"
    # "equinusocio.vsc-material-theme"
    # "equinusocio.vsc-material-theme-icons"
    # "esbenp.prettier-vscode"
    # "formulahendry.code-runner"
    # "geeksharp.openssl-configuration-file"
    # "github.copilot"
    # "github.vscode-github-actions"
    # "gitlab.gitlab-workflow"
    # "hashicorp.terraform"
    # "irongeek.vscode-env"
    # "junstyle.php-cs-fixer"
    # "lucax88x.codeacejumper"
    # "m1guelpf.better-pest" - better-phpunit now supports Pest
    # "mattpocock.ts-error-translator"
    # "mehedidracula.php-namespace-resolver"
    # "mikestead.dotenv"
    # "mohamedbenhida.laravel-intellisense"
    # "ms-azuretools.vscode-docker"
    # "ms-vscode.cpptools-extension-pack"
    # "ms-vscode-remote.remote-containers"
    # "neilbrayfield.php-docblocker"
    # "nikitakunevich.snippet-creator"
    # "onecentlin.laravel-blade"
    # "open-southeners.laravel-pint"
    # "patbenatar.advanced-new-file"
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
# )

# info "Installing Cursor Extensions."
# for item in ${extensions[@]}; do
#     if ! ls ~/.vscode/extensions/${item}* 1> /dev/null 2>&1; then
#         code --install-extension ${item}
#         success "${item} - installed"
#     else
#         line "${item} - already installed"
#     fi
# done

printf "\n"
