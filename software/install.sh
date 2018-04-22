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
# Homebrew Installation
#===================================================================================

# Homebrew Update
printf "\033[1;37mBrew update.\033[0m\n"
brew update
printf "\n"

# Installation
/Users/${USER}/dotfiles/software/scripted/ack.sh
/Users/${USER}/dotfiles/software/scripted/aerial.sh
/Users/${USER}/dotfiles/software/scripted/gnupg.sh
/Users/${USER}/dotfiles/software/scripted/mac-app-store-cli.sh
/Users/${USER}/dotfiles/software/scripted/quick-look-plugins.sh
/Users/${USER}/dotfiles/software/scripted/redis.sh
/Users/${USER}/dotfiles/software/scripted/ssh-copy-id.sh

#/Users/${USER}/dotfiles/software/scripted/mysql.sh
#/Users/${USER}/dotfiles/software/scripted/php71.sh
#/Users/${USER}/dotfiles/software/scripted/php71-xdebug.sh

# Homebrew Maintenance
printf "\033[1;37mBrew cleanup.\033[0m\n"
brew cleanup
printf "\n"

printf "\033[1;37mBrew prune.\033[0m\n"
brew prune
printf "\n"

printf "\033[1;37mBrew doctor.\033[0m\n"
brew doctor
printf "\n"
