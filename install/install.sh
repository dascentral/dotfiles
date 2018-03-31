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
/Users/${USER}/dotfiles/install/cgr.sh
/Users/${USER}/dotfiles/install/php-codesniffer.sh
/Users/${USER}/dotfiles/install/php-cs-fixer.sh


#===================================================================================
# Homebrew Installation
#===================================================================================

# Homebrew Maintenance
printf "\033[1;37mBrew update.\033[0m\n"
brew update
printf "\n"

printf "\033[1;37mBrew cleanup.\033[0m\n"
brew cleanup
printf "\n"

# Installation
/Users/${USER}/dotfiles/install/ack.sh
/Users/${USER}/dotfiles/install/aerial.sh
/Users/${USER}/dotfiles/install/gnupg.sh
/Users/${USER}/dotfiles/install/mac-app-store-cli.sh
/Users/${USER}/dotfiles/install/mysql.sh
/Users/${USER}/dotfiles/install/quick-look-plugins.sh
/Users/${USER}/dotfiles/install/redis.sh
/Users/${USER}/dotfiles/install/ssh-copy-id.sh

#/Users/${USER}/dotfiles/install/php71.sh
#/Users/${USER}/dotfiles/install/php71-xdebug.sh
