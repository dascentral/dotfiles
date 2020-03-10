#!/usr/bin/env bash

# Ensure we have a user folder
if [ ! -e /Users/${USER}/Library/Application\ Support/Code/User ]; then
    mkdir /Users/${USER}/Library/Application\ Support/Code/User
fi

# Configure for use of cloud-stored settings
rm /Users/${USER}/Library/Application\ Support/Code/User/settings.json
rm /Users/${USER}/Library/Application\ Support/Code/User/keybindings.json
rm -rf /Users/${USER}/Library/Application\ Support/Code/User/snippets
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/settings.json settings.json
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/keybindings.json keybindings.json
ln -s /Users/${USER}/dotfiles/settings/VSCode/User/snippets snippets

# Install extensions
code --install-extension patbenatar.advanced-new-file
code --install-extension lucax88x.codeacejumper
code --install-extension mikestead.dotenv
code --install-extension sleistner.vscode-fileutils
code --install-extension eamodio.gitlens
code --install-extension nikitakunevich.snippet-creator
code --install-extension ms-azuretools.vscode-docker
code --install-extension ryannaddy.laravel-artisan
code --install-extension onecentlin.laravel-blade
code --install-extension yzhang.markdown-all-in-one
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension calebporzio.better-phpunit
code --install-extension junstyle.php-cs-fixer
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension mehedidracula.php-namespace-resolver
code --install-extension dbaeumer.vscode-eslint
code --install-extension wix.vscode-import-cost
code --install-extension sysoev.language-stylus
code --install-extension william-voyek.vscode-nginx
code --install-extension bradlc.vscode-tailwindcss
code --install-extension octref.vetur
code --install-extension Equinusocio.vsc-material-theme
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension smlombardi.slime
