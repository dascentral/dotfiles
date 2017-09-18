#!/bin/sh

#===================================================================================
# PHP CS Fixer
#===================================================================================

# setup
name="PHP CS Fixer"
check="/Users/$USER/.composer/vendor/friendsofphp/php-cs-fixer"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
else
    printf "\033[1mInstalling $name...\033[0m\n"
    composer global require friendsofphp/php-cs-fixer
fi

# Add PHP CS Fixer configuration
config="/usr/local/var/php-cs-fixer"
printf "\033[1;33mConfiguring $name.\033[0m"
if [ ! -e $config ]; then
    mkdir $config
fi
cp /Users/$USER/Workspace/dotfiles/settings/php/.phpcsfixer $config/
printf "\n\n"
