#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

abort "WIP"
exit 0;

# install Oh My Zsh
if [ ! -e ~/.oh-my-zsh ]; then
    exit 0;
    info "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
