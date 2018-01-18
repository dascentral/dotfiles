#!/bin/sh

#===================================================================================
# Homebrew Installation Script
#===================================================================================

# Check if installed
if [ ! -e "/usr/local/bin/brew" ]; then
    printf "\n\033[1;33mHomebrew has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi

# Install software via Homebrew
/Users/${USER}/dotfiles/install/homebrew/ack.sh
/Users/${USER}/dotfiles/install/homebrew/gnupg.sh
/Users/${USER}/dotfiles/install/homebrew/mac-app-store-cli.sh
/Users/${USER}/dotfiles/install/homebrew/mysql.sh
/Users/${USER}/dotfiles/install/homebrew/php.sh
/Users/${USER}/dotfiles/install/homebrew/quick-look-plugins.sh
/Users/${USER}/dotfiles/install/homebrew/redis.sh
/Users/${USER}/dotfiles/install/homebrew/ssh-copy-id.sh
