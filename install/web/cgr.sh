#!/bin/sh

#===================================================================================
# Composer Global Require (cgr) - https://github.com/consolidation/cgr
#===================================================================================

# setup
name="cgr (composer global require)"
check="/Users/$USER/.composer/vendor/bin/cgr"

# Check if installed
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
    exit 1;
fi
printf "\n"

# Install
composer global require consolidation/cgr

# Wrap it up
printf "\n\n"