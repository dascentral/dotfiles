#!/usr/bin/env bash

#===================================================================================
# Quick Look - https://github.com/sindresorhus/quick-look-plugins
#===================================================================================

# setup
name="Quick Look Plugins"
check="/Users/${USER}/Library/QuickLook/QuickLookJSON.qlgenerator"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json webpquicklook suspicious-package quicklookase qlvideo
    printf "\n\n"
fi
