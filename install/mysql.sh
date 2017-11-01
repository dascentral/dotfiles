#!/bin/sh

#===================================================================================
# MySQL
#===================================================================================

# setup
name="MySQL"
check="/usr/local/bin/mysql"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;33mInstalling $name...\033[0m\n"
brew install mysql
brew services start mysql

# Wrap it up
printf "\n\n"
