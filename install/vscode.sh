#!/usr/bin/env bash

declare -a extensions=(
    "arcticicestudio.nord-visual-studio-code"
    "bmewburn.vscode-intelephense-client"
    "bradlc.vscode-tailwindcss"
    "calebporzio.better-phpunit"
    "christian-kohler.npm-intellisense"
    "DavidAnson.vscode-markdownlint"
    "dbaeumer.vscode-eslint"
    "eamodio.gitlens"
    "Equinusocio.vsc-material-theme"
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
    "sysoev.language-stylus"
    "vscode-icons-team.vscode-icons"
    "william-voyek.vscode-nginx"
    "wix.vscode-import-cost"
    "yzhang.markdown-all-in-one"
)

for extension in ${extensions[@]}; do
    if ! ls ~/.vscode/extensions/${extension}* 1> /dev/null 2>&1; then
        printf "\033[1;37mInstalling VS Code Extension - $extension\033[0m\n"
        code --install-extension $extension
        printf "\n"
    fi
done
