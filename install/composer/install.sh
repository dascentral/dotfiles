#!/bin/sh

#===================================================================================
# Composer Installation Script
#===================================================================================

# Check if installed
if [ ! -e "/usr/local/bin/composer" ]; then
    printf "\n\033[1;33mComposer has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi

# Composer Update
printf "\033[1;37mComposer self-update.\033[0m\n"
/usr/local/bin/composer self-update
printf "\n"

# Installation
/Users/${USER}/dotfiles/install/composer/cgr.sh
/Users/${USER}/dotfiles/install/composer/php-codesniffer.sh
/Users/${USER}/dotfiles/install/composer/php-cs-fixer.sh