#!/bin/sh

#===================================================================================
# PHP CS Fixer
#===================================================================================

# setup
name="PHP CS Fixer"
check="/Users/$USER/.composer/vendor/friendsofphp/php-cs-fixer"

# Check if installed
if [ -e $check ]; then
    printf "\033[1m$name already installed.\033[0m\n"
else
    printf "\033[1mInstalling $name...\033[0m\n"
    composer global require friendsofphp/php-cs-fixer
fi
printf "\n"

# Add PHP CS Fixer configuration
printf "\033[1mConfiguring $name...\033[0m\n"
cp /Users/$USER/Workspace/dotfiles/install/php/.phpcsfixer /Users/$USER

printf "\n"