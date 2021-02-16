#!/usr/bin/env bash

# Confirm necessary software is installed
if [ ! -e "/usr/local/bin/brew" ]; then
    printf "\n\033[1;33mHomebrew has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi


#============================================================================
# Software installations
#============================================================================

# Homebrew Upgrade
printf "\033[1;37mBrew upgrade.\033[0m\n"
brew upgrade
printf "\n"


# Homebrew Update
printf "\033[1;37mBrew update.\033[0m\n"
brew update
printf "\n"


#============================================================================
# Cleanup
#============================================================================

# Homebrew cleanup
printf "\033[1;37mBrew cleanup.\033[0m\n"
brew cleanup
printf "\n"

# Homebrew doctor
printf "\033[1;37mBrew doctor.\033[0m\n"
brew doctor
printf "\n"
