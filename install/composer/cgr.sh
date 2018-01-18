#!/bin/sh

#===================================================================================
# Composer Global Require (cgr) - https://github.com/consolidation/cgr
#===================================================================================

# setup
name="Composer Global Require"
check="/Users/$USER/.composer/vendor/bin/cgr"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;33mInstalling $name...\033[0m\n"
composer global require consolidation/cgr

# Wrap it up
printf "\n\n"
