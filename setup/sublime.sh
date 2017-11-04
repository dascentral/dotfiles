#!/bin/sh

#===================================================================================
# Sublime Text Setup Script - macOS
#===================================================================================

printf "\n"

# Dropbox must be installed
if [ ! -e "/Users/${USER}/Dropbox/DAS/Software/Sublime" ]; then
    printf "\033[1;33mDropbox has not been installed or settings are missing.\n\n\033[0m"
    exit 1;
fi

# Create the symbolic link for Preferences
if [ ! -L "/Users/${USER}/Library/Application Support/Sublime Text 3/Packages/User" ]; then
    printf "\033[1;37mReplacing Sublime's local settings with settings stored in the cloud.\n\033[0m"
    cd /Users/${USER}/Library/Application\ Support/Sublime\ Text\ 3/Packages/
    rm -rf User
    ln -s /Users/${USER}/Dropbox/DAS/Software/Sublime/User
else
    printf "\033[1;33mSublime preferences already synced with the cloud.\n\033[0m"
fi

# Create the symbolic link for the Executable
if [ ! -e "/usr/local/bin/subl" ]; then
    printf "\033[1;37mCreating symbolic link to the Sublime executable.\n\033[0m"
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
else
    printf "\033[1;33mExecutable already exists.\n\033[0m"
fi

printf "\n"
