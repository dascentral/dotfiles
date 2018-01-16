#!/bin/sh

#===================================================================================
# Sublime Text
#===================================================================================

# Local Sublime Settings - Handled silenty
if [ ! -e "/Users/${USER}/.sublime" ]; then
    mkdir /Users/${USER}/.sublime
fi

# SublimePhpCsFixer Settings
if [ ! -e "/Users/${USER}/.sublime/SublimePhpCsFixer.sublime-settings" ]; then
    printf "\033[1;37mConfiguring SublimePhpCsFixer..."
    cp /Users/${USER}/dotfiles/sublime/SublimePhpCsFixer.sublime-settings /Users/${USER}/.sublime
    sed -i '.original' "s/USERNAME/${USER}/g" /Users/${USER}/.sublime/SublimePhpCsFixer.sublime-settings
    printf " complete.\033[0m\n\n"
fi
