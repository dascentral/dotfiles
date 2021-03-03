#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

# configure folders
localPath="/Users/${USER}/Library/Application Support/Code/User"
dotfilesPath="${DOTFILES}/settings/VSCode/User"

# confirm app has been installed
if [ ! -e "/Applications/Visual Studio Code.app" ]; then
    abort "Visual Studio Code has not been installed."
fi

# confirm command line utility is available
if [ ! -e "/usr/local/bin/code" ]; then
    # TODO: Automate install of the command line utility
    abort "VS Code command line utility is not available."
fi

info "Configuring Visual Studio Code"

# create the local User folder
mkdir -pv "${localPath}"

# create symbolic links for application settings
declare -a links=(
    "settings.json"
    "keybindings.json"
    "snippets"
)
for item in ${links[@]}; do
    rm -rf "${localPath}/${item}"
    ln -s "${dotfilesPath}/${item}" "${localPath}/${item}"
done
printf "\n"

# install VS Code extensions
declare -a extensions=(
    "arcticicestudio.nord-visual-studio-code"
    "bmewburn.vscode-intelephense-client"
    "bradlc.vscode-tailwindcss"
    "calebporzio.better-phpunit"
    "christian-kohler.npm-intellisense"
    "christian-kohler.path-intellisense"
    "davidanson.vscode-markdownlint"
    "dbaeumer.vscode-eslint"
    "dbankier.vscode-quick-select"
    "eamodio.gitlens"
    "editorconfig.editorconfig"
    "equinusocio.vsc-material-theme"
    "equinusocio.vsc-material-theme-icons"
    "irongeek.vscode-env"
    "junstyle.php-cs-fixer"
    "lucax88x.codeacejumper"
    "mehedidracula.php-namespace-resolver"
    "mikestead.dotenv"
    "mohamedbenhida.laravel-intellisense"
    "ms-azuretools.vscode-docker"
    "neilbrayfield.php-docblocker"
    "nikitakunevich.snippet-creator"
    "octref.vetur"
    "onecentlin.laravel-blade"
    "patbenatar.advanced-new-file"
    "redhat.vscode-yaml"
    "ryannaddy.laravel-artisan"
    "sleistner.vscode-fileutils"
    "smlombardi.slime"
    "stylelint.vscode-stylelint"
    "shufo.vscode-blade-formatter"
    "sysoev.language-stylus"
    "vscode-icons-team.vscode-icons"
    "william-voyek.vscode-nginx"
    "wix.vscode-import-cost"
    "yzhang.markdown-all-in-one"
)

for extension in ${extensions[@]}; do
    if ! ls ~/.vscode/extensions/${extension}* 1> /dev/null 2>&1; then
        info "Installing VS Code Extension - $extension"
        code --install-extension $extension
        printf "\n"
    fi
done
