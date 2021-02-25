#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

# TODOs:
# - Make a directory with a space in the path
# - cd into a directory with a space in the path
# - Remove a file with a space in the path
# - Determine if a folder is symlinked
# - Confirm VS Code has been installed
# - Automate install of the command line utility

if [ ! -e "/usr/local/bin/code" ]; then
    # TODO: Automate install of the command line utility
    abort "VS Code command line utility is not available."
fi

# configure location of User folder
#basepath="/Users/${USER}/Library/Application\ Support/Code/User2"

# create the User folder
mkdir -pv "/Users/${USER}/Library/Application Support/Code/User"

# replace local settings with those in this repository
if [ ! -L "/Users/${USER}/Library/Application Support/Code/User/settings.json" ]; then
    rm -rf /Users/${USER}/Library/Application\ Support/Code/User/settings.json
    ln -s /Users/${USER}/dotfiles/settings/VSCode/User/settings.json /Users/${USER}/Library/Application\ Support/Code/User/settings.json
    info "VS Code settings linked to repository"
fi

# replace local key bindings with those in this repository
if [ ! -L "/Users/${USER}/Library/Application Support/Code/User/keybindings.json" ]; then
    rm -rf /Users/${USER}/Library/Application\ Support/Code/User/keybindings.json
    ln -s /Users/${USER}/dotfiles/settings/VSCode/User/keybindings.json /Users/${USER}/Library/Application\ Support/Code/User/keybindings.json
    info "VS Code key bindings linked to repository"
fi

# replace local snippets with those in this repository
# if [ -L "/Users/${USER}/Library/Application\ Support/Code/User/snippets" ]; then
#     info "snippets folder exists"
# fi
# rm -rf /Users/${USER}/Library/Application\ Support/Code/User/snippets
# ln -s /Users/${USER}/dotfiles/settings/VSCode/User/snippets snippets

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
