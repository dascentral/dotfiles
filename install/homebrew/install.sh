#!/bin/sh

#===================================================================================
# Homebrew Installation Script
#===================================================================================

# Check if installed
if [ ! -e "/usr/local/bin/brew" ]; then
    printf "\n\033[1;33mHomebrew has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi

# Homebrew Maintenance
printf "\033[1;37mBrew update.\033[0m\n"
brew update
printf "\n"

printf "\033[1;37mBrew cleanup.\033[0m\n"
brew cleanup
printf "\n"

# Installation
/Users/${USER}/dotfiles/install/homebrew/ack.sh
/Users/${USER}/dotfiles/install/homebrew/aerial.sh
/Users/${USER}/dotfiles/install/homebrew/gnupg.sh
/Users/${USER}/dotfiles/install/homebrew/mac-app-store-cli.sh
/Users/${USER}/dotfiles/install/homebrew/mysql.sh
/Users/${USER}/dotfiles/install/homebrew/php71.sh
/Users/${USER}/dotfiles/install/homebrew/php71-xdebug.sh
/Users/${USER}/dotfiles/install/homebrew/quick-look-plugins.sh
/Users/${USER}/dotfiles/install/homebrew/redis.sh
/Users/${USER}/dotfiles/install/homebrew/ssh-copy-id.sh
