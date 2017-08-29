#!/bin/sh

#===================================================================================
# Sublime Text
#===================================================================================

# Local Sublime Settings - Handled silenty
if [ ! -e "/Users/${USER}/.sublime" ]; then
    mkdir /Users/${USER}/.sublime
fi

# Symbolic link
if [ ! -e "/usr/local/bin/subl" ]; then
    printf "\033[1mAdding Sublime Text symbolic link...\033[0m\n"
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
    printf "\033[1m complete.\033[0m\n\n"
fi

# SublimePhpCsFixer Settings
if [ ! -e "/Users/${USER}/.sublime/SublimePhpCsFixer.sublime-settings" ]; then
    printf "\033[1mConfiguring SublimePhpCsFixer...\033[0m\n"
    cp /Users/${USER}/Workspace/dotfiles/sublime/SublimePhpCsFixer.sublime-settings /Users/${USER}/.sublime
    sed -i '.original' "s/USERNAME/${USER}/g" /Users/${USER}/.sublime/SublimePhpCsFixer.sublime-settings
    printf "\033[1m complete.\033[0m\n\n"
fi
