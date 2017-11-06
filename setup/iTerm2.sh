#!/bin/sh

#===================================================================================
# iTerm2 Setup Script - macOS
#===================================================================================
# References
# - https://github.com/robbyrussell/oh-my-zsh
# - https://github.com/robbyrussell/oh-my-zsh/wiki/themes
#===================================================================================

printf "\n"

# Check if already setup
if [ -e "/Users/$USER/.oh-my-zsh" ]; then
    printf "\033[1;33mLooks like Oh My Zsh is already installed. Aborting iTerm2 setup.\n\n\033[0m"
    exit 0;
fi

printf "\033[1;37mI'd run this manually.\n\n\033[0m"
exit 0;

# Install Oh My Zsh
printf "\033[1;33mInstalling and customizing Oh My Zsh...\033[0m\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
printf "\n"

# set path to .zshrc
zshrc="/Users/$USER/.zshrc"

# Set the theme
sed -i '.original' "s/robbyrussell/af-magic/g" $zshrc

# Add a reference to aliases
printf "\n" >> $zshrc
printf "# Source Aliases\n" >> $zshrc
printf "source ~/.aliases\n" >> $zshrc
printf "\n" >> $zshrc

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Dropbox/DAS/Software/iTerm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true


#===================================================================================
# Modifying the Path
#===================================================================================
# None of this is automated as I'm not sure the best way to execute. Currently
# rolling with this entry:
# export PATH="$PATH:/Users/douglas.smith/.composer/vendor/bin"
#
# Default Paths
# /usr/local/bin
# /usr/bin
# /bin
# /usr/sbin
# /sbin
#
# Additional Paths to Consider
# /usr/local/sbin - Not sure who needs this.
# /usr/local/mysql/bin - This seems to be firing automatically following a Brew install.
# /Users/douglas.smith/.composer/vendor/bin - Definitely want to add this one.
#
# Added via Installation
# /Users/douglas.smith/.nvm/versions/node/v8.7.0/bin
#===================================================================================
