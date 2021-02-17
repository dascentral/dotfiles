#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

# Confirm necessary software is installed
if [ ! -e "/usr/local/bin/brew" ]; then
    abort "Homebrew has not been installed. Aborting installation."
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
