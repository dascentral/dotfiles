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
# Composer
#===================================================================================
/Users/${USER}/dotfiles/software/scripted/composer.sh


#===================================================================================
# Homebrew
#===================================================================================
/Users/${USER}/dotfiles/software/scripted/homebrew.sh
