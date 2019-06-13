#!/usr/bin/env bash

#===================================================================================
# Composer Global Require (cgr) - https://github.com/consolidation/cgr
#===================================================================================

# setup
name="Composer Global Require"
check="/Users/$USER/.composer/vendor/bin/cgr"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    composer global require consolidation/cgr
    printf "\n"
fi
