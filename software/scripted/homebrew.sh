#!/usr/bin/env bash

#===================================================================================
# Homebrew Install Script
#===================================================================================
#
# DESCRIPTION
# Keeps Homebrew up-to-date and ensures all software installed via Homebrew
# exists on the local machine.
#
#===================================================================================


#===================================================================================
# Homebrew Upgrade
#===================================================================================
printf "\033[1;37mBrew upgrade.\033[0m\n"
brew upgrade
printf "\n"


#===================================================================================
# Homebrew Update
#===================================================================================
printf "\033[1;37mBrew update.\033[0m\n"
brew update
printf "\n"



#===================================================================================
# Install Software
#===================================================================================

# ack
name="ack"
check="/usr/local/bin/ack"
url="http://beyondgrep.com/install/"
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew install ack
    printf "\n\n"
fi


# Aerial
name="Aerial Screen Saver"
check="/Users/${USER}/Library/Screen Savers/Aerial.saver"
url="https://github.com/JohnCoates/Aerial"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url.\033[0m\n"
    brew cask install aerial
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


# GnuPG
name="GnuPG"
check="/usr/local/bin/gpg"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew install gnupg gnupg2
    printf "\n\n"
fi


# Mac App Store CLI
name="Mac App Store CLI"
check="/usr/local/bin/mas"
url="https://github.com/mas-cli/mas"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew install mas
    printf "\n\n"
fi


# Postman
name="Postman"
check="/Applications/Postman.app"
url="https://www.getpostman.com"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install postman
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
name="Redis"
check="/usr/local/bin/redis-cli"
url="https://redis.io/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew install redis
    brew services start redis
    printf "\n\n"
fi


# Rocket
name="Rocket"
check="/Applications/Rocket.app"
url="https://matthewpalmer.net/rocket/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install rocket
    printf "\n\n"
fi


# SSH Copy ID
name="SSH Copy ID"
check="/usr/local/bin/ssh-copy-id"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew install ssh-copy-id
    printf "\n\n"
fi


# Spotify
name="Spotify"
check="/Applications/Spotify.app"
url="https://www.spotify.com/us/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install spotify
    printf "\n\n"
fi


# Sublime Text
name="Sublime Text"
check="/Applications/Sublime Text.app"
url="https://www.sublimetext.com/"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install sublime-text
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


# VirtualBox
#app="virtualbox"
#name="VirtualBox"
#check="/Applications/VirtualBox.app"
#url="https://www.virtualbox.org"
#if [ ! -e $check ]; then
#    printf "\033[1;37mInstalling $name - $url\033[0m\n"
#    brew cask install $app
#    printf "\n\n"
#fi



#===================================================================================
# Homebrew Maintenance
#===================================================================================
printf "\033[1;37mBrew cleanup.\033[0m\n"
brew cleanup
printf "\n"

printf "\033[1;37mBrew doctor.\033[0m\n"
brew doctor
printf "\n"
