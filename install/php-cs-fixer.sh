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
printf "\033[1mConfiguring $name...\033[0m"
cp /Users/$USER/Workspace/dotfiles/settings/php/.phpcsfixer /Users/$USER

printf "\033[1m complete.\033[0m"
printf "\n\n"
