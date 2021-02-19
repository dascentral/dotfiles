#!/usr/bin/env bash

source /Users/${USER}/dotfiles/bin/.functions

if [ ! -e "/usr/local/bin/brew" ]; then
    abort "Homebrew has not been installed. Aborting installation."
fi

# Confirm Composer is installed
if [ ! -e "/usr/local/bin/composer" ]; then
    abort "Composer has not been installed. Aborting installation."
fi

# Ash for password before we begin
#sudo -v

# Composer installations
/Users/${USER}/dotfiles/install/composer.sh

# Homebrew installations
/Users/${USER}/dotfiles/install/homebrew.sh

# VS Code installations
/Users/${USER}/dotfiles/install/vscode.sh

# Aliases
/Users/${USER}/dotfiles/install/aliases.sh
