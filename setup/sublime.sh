#!/bin/sh

#===================================================================================
# Sublime Text Setup Script - macOS
#===================================================================================
#
# DESCRIPTION
# Script that gets Sublime Text 3 ready for use.
#
# PARAMETERS
# - N/A
#
# ACTIONS PERFORMED
# - Replaces local preferences with those stored in the cloud
# - Creates a symbolic link for the executable
#
# ASSUMPTIONS
# - Web server is Nginx
# - Web server user is "www-data"
# - PHP FPM is located in its "normal" place
#
#===================================================================================

# setup
name="ack"
check="/usr/local/bin/ack"

printf "\n"

# Dropbox must be installed
if [ ! -e "/Users/${USER}/Dropbox/DAS/Software/Sublime" ]; then
    printf "\033[1;33mDropbox has not been installed or settings are missing.\n\n\033[0m"
    exit 1;
fi

# Create the symbolic link for Preferences
if [ ! -L "/Users/${USER}/Library/Application Support/Sublime Text 3/Packages/User" ]; then
    printf "\033[1;33mReplacing Sublime's local settings with settings stored in the cloud.\n\033[0m"
    cd /Users/${USER}/Library/Application\ Support/Sublime\ Text\ 3/Packages/
    rm -rf User
    ln -s /Users/${USER}/Dropbox/DAS/Software/Sublime/User
else
    printf "\033[1;37mSublime preferences already synced with the cloud.\n\033[0m"
fi

# Create the symbolic link for the Executable
if [ ! -e "/usr/local/bin/subl" ]; then
    printf "\033[1;33mCreating symbolic link to the Sublime executable.\n\033[0m"
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
else
    printf "\033[1;37mExecutable already exists.\n\033[0m"
fi

printf "\n"
