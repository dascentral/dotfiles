#!/usr/bin/env bash

#============================================================================
# Confirm necessary software is installed
#============================================================================

# Homebrew
if [ ! -e "/usr/local/bin/brew" ]; then
    printf "\n\033[1;33mHomebrew has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi

# Composer
if [ ! -e "/usr/local/bin/composer" ]; then
    printf "\n\033[1;33mComposer has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi


#============================================================================
# Ash for password before we begin
#============================================================================
#sudo -v


# Package Installations
/Users/${USER}/dotfiles/install/packages.sh

# Composer installations
/Users/${USER}/dotfiles/install/composer.sh

# Homebrew installations
/Users/${USER}/dotfiles/install/homebrew.sh

# VS Code installations
/Users/${USER}/dotfiles/install/vscode.sh
