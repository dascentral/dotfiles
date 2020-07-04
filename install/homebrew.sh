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


# ack
app="ack"
name="ack"
check="/usr/local/bin/ack"
url="https://beyondgrep.com/install"
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew install $app
    printf "\n\n"
fi


# Alfred
app="alfred"
name="Alfred 4"
check="/Applications/Alfred 4.app"
url="https://www.alfredapp.com"
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
url="https://www.mozilla.org/en-US/exp/firefox/new"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# GnuPG
name="GnuPG"
check="/usr/local/bin/gpg"
url="https://gnupg.org"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew install gnupg gnupg2
    printf "\n\n"
fi


# Google Backup & Sync
app="google-backup-and-sync"
name="Google Backup and Sync"
check="/Applications/Backup and Sync.app"
url="https://www.google.com/drive/download/backup-and-sync"
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


# Grammarly
app="grammarly"
name="Grammarly"
check="/Applications/Grammarly.app"
url="https://www.grammarly.com/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# ImageOptim
app="imageoptim"
name="ImageOptim"
check="/Applications/ImageOptim.app"
url="https://imageoptim.com/mac"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# iTerm2
app="iterm2"
name="iTerm2"
check="/Applications/iTerm.app"
url="https://www.iterm2.com"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Mac App Store CLI
app="mas"
name="Mac App Store CLI"
check="/usr/local/bin/mas"
url="https://github.com/mas-cli/mas"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew install $app
    printf "\n\n"
fi


# MacDown
#app="macdown"
#name="MacDown"
#check="/Applications/MacDown.app"
#url="https://macdown.uranusjr.com"
#if [ ! -e "$check" ]; then
#    printf "\033[1;37mInstalling $name - $url\033[0m\n"
#    brew cask install $app
#    printf "\n\n"
#fi


# Postman
app="postman"
name="Postman"
check="/Applications/Postman.app"
url="https://www.getpostman.com"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Quick Look Plugins
name="Quick Look Plugins"
check="/Users/${USER}/Library/QuickLook/QuickLookJSON.qlgenerator"
url="https://github.com/sindresorhus/quick-look-plugins"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json webpquicklook suspicious-package quicklookase qlvideo
    printf "\n\n"
fi


# Redis
app="redis"
name="Redis"
check="/usr/local/bin/redis-cli"
url="https://redis.io/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew install $app
    brew services start $app
    printf "\n\n"
fi


# Rocket
app="rocket"
name="Rocket"
check="/Applications/Rocket.app"
url="https://matthewpalmer.net/rocket"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# SSH Copy ID
app="ssh-copy-id"
name="SSH Copy ID"
check="/usr/local/bin/ssh-copy-id"
url="https://www.ssh.com/ssh/copy-id"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew install $app
    printf "\n\n"
fi


# Spectacle
app="spectacle"
name="Spectacle"
check="/Applications/Spectacle.app"
url="https://www.spectacleapp.com"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Spotify
app="spotify"
name="Spotify"
check="/Applications/Spotify.app"
url="https://www.spotify.com/us"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Sublime Text
app="sublime-text"
name="Sublime Text"
check="/Applications/Sublime Text.app"
url="https://www.sublimetext.com"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# TablePlus
app="tableplus"
name="TablePlus"
check="/Applications/TablePlus.app"
url="https://tableplus.io"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# TeamViewer
app="teamviewer"
name="TeamViewer"
check="/Applications/TeamViewer.app"
url="https://www.teamviewer.com/en-us/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Tower
app="tower"
name="Tower"
check="/Applications/Tower.app"
url="https://www.git-tower.com/mac"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Tower
app="typora"
name="Typora"
check="/Applications/Typora.app"
url="https://typora.io"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# WhatsApp
app="whatsapp"
name="WhatsApp"
check="/Applications/WhatsApp.app"
url="https://www.whatsapp.com"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


# Visual Studio Code
app="visual-studio-code"
name="Visual Studio Code"
check="/Applications/Visual Studio Code.app"
url="https://code.visualstudio.com"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi


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
