#!/bin/sh

#===================================================================================
# Confirm necessary software is installed
#===================================================================================

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

# PHP
if [ ! -e "/usr/local/bin/php" ]; then
    printf "\n\033[1;33mPHP has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi



#===================================================================================
# Composer installations
#===================================================================================

# Composer Update
printf "\033[1;37mComposer self-update.\033[0m\n"
/usr/local/bin/composer self-update
printf "\n"


# Composer Global Require
name="Composer Global Require"
check="/Users/$USER/.composer/vendor/bin/cgr"
url="https://github.com/consolidation/cgr"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    composer global require consolidation/cgr
    printf "\n"
fi


# dascentral/hubflow-release
name="dascentral/hubflow-release"
check="/Users/$USER/.composer/vendor/bin/hf"
url="https://packagist.org/packages/dascentral/hubflow-release"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    composer global require dascentral/hubflow-release
    printf "\n"
fi


# laravel/installer
name="laravel/installer"
check="/Users/$USER/.composer/vendor/bin/laravel"
url="https://laravel.com/docs/master"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    composer global require laravel/installer
    printf "\n"
fi


# PHP Code Sniffer
name="PHP Code Sniffer"
check="/Users/$USER/.composer/vendor/squizlabs/php_codesniffer"
url="https://github.com/squizlabs/PHP_CodeSniffer"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    composer global require "squizlabs/php_codesniffer=*"
    printf "\n"
fi


# PHP CS Fixer
name="PHP CS Fixer"
check="/Users/$USER/.composer/vendor/friendsofphp/php-cs-fixer"
url="https://github.com/FriendsOfPHP/PHP-CS-Fixer"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    composer global require friendsofphp/php-cs-fixer
    printf "\n"
fi



#===================================================================================
# Homebrew installations
#===================================================================================

# Homebrew Upgrade
printf "\033[1;37mBrew upgrade.\033[0m\n"
brew upgrade
printf "\n"


# Homebrew Update
printf "\033[1;37mBrew update.\033[0m\n"
brew update
printf "\n"


# ack
app="ack"
name="ack"
check="/usr/local/bin/ack"
url="http://beyondgrep.com/install/"
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew install $app
    printf "\n\n"
fi


# Alfred
app="alfred"
name="Alfred 4"
check="/Applications/Alfred 4.app"
url="https://www.alfredapp.com/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Aerial
app="aerial"
name="Aerial Screen Saver"
check="/Users/${USER}/Library/Screen Savers/Aerial.saver"
url="https://github.com/JohnCoates/Aerial"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Bartender
app="bartender"
name="Bartender"
check="/Applications/Bartender 3.app"
url="https://www.macbartender.com"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Docker
app="docker"
name="Docker"
check="/Applications/Docker.app"
url="https://www.docker.com/products/docker-desktop"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Firefox
app="firefox"
name="Firefox"
check="/Applications/Firefox.app"
url="https://www.mozilla.org/en-US/exp/firefox/new/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# GnuPG
name="GnuPG"
check="/usr/local/bin/gpg"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew install gnupg gnupg2
    printf "\n\n"
fi


# Google Backup & Sync
app="google-backup-and-sync"
name="Google Backup and Sync"
check="/Applications/Backup and Sync.app"
url="https://www.google.com/drive/download/backup-and-sync/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Google Chrome
app="google-chrome"
name="Google Chrome"
check="/Applications/Google Chrome.app"
url="https://www.google.com/chrome"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# iTerm2
app="iterm2"
name="iTerm2"
check="/Applications/iTerm.app"
url="https://www.iterm2.com/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"

    # install software
    brew cask install $app

    # Specify the preferences directory
    defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Documents/Software/iTerm2"

    # Tell iTerm2 to use the custom preferences in the directory
    defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

    # Don’t display the annoying prompt when quitting iTerm
    defaults write com.googlecode.iterm2 PromptOnQuit -bool false

    printf "\n\n"
fi


