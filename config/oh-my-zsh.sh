#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

abort "Script has not been tested. Run commands manually to confirm it works as expected."

exit 0;

# TODO - need to add installation of https://github.com/zsh-users/zsh-syntax-highlighting

# Ensure Oh My Zsh has been installed
if [ ! -e ~/.oh-my-zsh ]; then
    exit 0;
    printf "\033[1;37mInstalling Oh My Zsh\033[0m\n"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    printf "\n\033[1;37mOh My Zsh has already been installed and likely configured.\033[0m\n\n"
    exit 0;
fi

# We can replace these prinf & sed commands by adding a symbolic link to the .zshrc file in this repo
#ln -s ~/dotfiles/shell/.zshrc ~/.zshrc
#
# aliases
#printf "\n# Source Aliases\nsource ~/.aliases\n\n" >> ~/.zshrc

# path
#printf "# Path additions\n" >> ~/.zshrc
#printf "export PATH=\$PATH:/usr/local/sbin\n" >> ~/.zshrc
#printf "export PATH=\$PATH:/usr/local/opt/mysql@5.7/bin\n" >> ~/.zshrc
#printf "export PATH=\$PATH:~/.composer/vendor/bin\n\n" >> ~/.zshrc

# theme
#sed -i '.original' "s/robbyrussell/af-magic/g" /Users/${USER}/.zshrc

# plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
printf "# zsh-autosuggestions\nsource ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh\n\n" >> ~/.zshrc

# source
source ~/.zshrc
