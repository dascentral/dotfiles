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
printf "\033[1;33mConfiguring $name... "
cp /Users/$USER/Workspace/dotfiles/settings/php/.phpcsfixer /Users/$USER
printf "complete.\033[0m\n\n"
