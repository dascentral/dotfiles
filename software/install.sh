#!/bin/sh

#===================================================================================
# Confirm Homebrew & Composer are installed
#===================================================================================

# Check if installed
if [ ! -e "/usr/local/bin/brew" ]; then
    printf "\n\033[1;33mHomebrew has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi

# Check if installed
if [ ! -e "/usr/local/bin/composer" ]; then
    printf "\n\033[1;33mComposer has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi


#===================================================================================
# Composer Installation
#===================================================================================

# Composer Update
printf "\033[1;37mComposer self-update.\033[0m\n"
/usr/local/bin/composer self-update
printf "\n"

# Installation
/Users/${USER}/dotfiles/software/scripted/cgr.sh
/Users/${USER}/dotfiles/software/scripted/php-codesniffer.sh
/Users/${USER}/dotfiles/software/scripted/php-cs-fixer.sh


#===================================================================================
# Homebrew
#===================================================================================

/Users/${USER}/dotfiles/software/scripted/homebrew.sh
