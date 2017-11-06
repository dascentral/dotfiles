#!/bin/sh

#===================================================================================
# Quick Look - https://github.com/sindresorhus/quick-look-plugins
#===================================================================================

# setup
name="Quick Look Plugins"
check="/Users/${USER}/Library/QuickLook/QuickLookJSON.qlgenerator"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;37mInstalling $name...\033[0m\n"
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Wrap it up
printf "\n\n"
