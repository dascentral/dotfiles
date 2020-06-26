#!/usr/bin/env bash

# at this time, this script is NOT idempotent
if [ -e /Users/${USER}/Library/Application\ Support/Code/User ]; then
    printf "\n\033[1;37mVisual Studio code has already been configured.\033[0m\n\n"
    exit 0;
fi

# Ensure we have a user folder
mkdir /Users/${USER}/Library/Application\ Support/Code/User


# Configure for use of cloud-stored settings
rm /Users/${USER}/Library/Application\ Support/Code/User/settings.json
rm /Users/${USER}/Library/Application\ Support/Code/User/keybindings.json
rm -rf /Users/${USER}/Library/Application\ Support/Code/User/snippets
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/settings.json settings.json
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/keybindings.json keybindings.json
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/snippets snippets


# Install extensions
extension="arcticicestudio.nord-visual-studio-code"
code --install-extension $extension

extension="bmewburn.vscode-intelephense-client"
code --install-extension $extension

extension="bradlc.vscode-tailwindcss"
code --install-extension $extension

extension="calebporzio.better-phpunit"
code --install-extension $extension

extension="christian-kohler.npm-intellisense"
code --install-extension $extension

extension="DavidAnson.vscode-markdownlint"
code --install-extension $extension

extension="dbaeumer.vscode-eslint"
code --install-extension $extension

extension="eamodio.gitlens"
code --install-extension $extension

extension="Equinusocio.vsc-material-theme"
code --install-extension $extension

extension="junstyle.php-cs-fixer"
code --install-extension $extension

extension="lucax88x.codeacejumper"
code --install-extension $extension

extension="mehedidracula.php-namespace-resolver"
code --install-extension $extension

extension="mikestead.dotenv"
code --install-extension $extension

extension="mohamedbenhida.laravel-intellisense"
code --install-extension $extension

extension="ms-azuretools.vscode-docker"
code --install-extension $extension

extension="neilbrayfield.php-docblocker"
code --install-extension $extension

extension="nikitakunevich.snippet-creator"
code --install-extension $extension

extension="octref.vetur"
code --install-extension $extension

extension="onecentlin.laravel-blade"
code --install-extension $extension

extension="patbenatar.advanced-new-file"
code --install-extension $extension

extension="redhat.vscode-yaml"
code --install-extension $extension

extension="ryannaddy.laravel-artisan"
code --install-extension $extension

extension="sleistner.vscode-fileutils"
code --install-extension $extension

extension="smlombardi.slime"
code --install-extension $extension

extension="stylelint.vscode-stylelint"
code --install-extension $extension

extension="sysoev.language-stylus"
code --install-extension $extension

extension="vscode-icons-team.vscode-icons"
code --install-extension $extension

extension="william-voyek.vscode-nginx"
code --install-extension $extension

extension="wix.vscode-import-cost"
code --install-extension $extension

extension="yzhang.markdown-all-in-one"
code --install-extension $extension
