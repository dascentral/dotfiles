#!/bin/sh

#===================================================================================
# Composer - https://getcomposer.org/download/
#===================================================================================

# setup
name="Composer"
check="/usr/local/bin/composer"

# Check if installed
printf "\033[1mUpdating $name...\033[0m\n"
/usr/local/bin/composer self-update
printf "\n"
