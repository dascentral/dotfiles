#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions


# Confirm necessary software is installed
if [ ! -e "/usr/local/bin/composer" ]; then
    abort "Composer has not been installed. Aborting installation."
fi

# Composer Update
printf "\033[1;37mComposer self-update.\033[0m\n"
/usr/local/bin/composer self-update
printf "\n"

# Loop through desired packages
# "squizlabs/php_codesniffer=*"
declare -a extensions=(
    "dascentral/hubflow-release"
    "consolidation/cgr"
    "friendsofphp/php-cs-fixer"
    "laravel/installer"
    "laravel/valet"
    "tightenco/takeout"
)

for extension in ${extensions[@]}; do
    parts=(`echo $extension | tr '/' ' '`)
    if [ ! -e "/Users/${USER}/.composer/vendor/${parts[0]}/${parts[1]}" ]; then
        info "\nInstalling $extension"
        composer global require $extension
    fi
done
