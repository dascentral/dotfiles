#!/bin/sh

#===================================================================================
# MySQL
#===================================================================================

# setup
name="MySQL"
check="/usr/local/bin/mysql"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;33mInstalling $name...\033[0m\n"
    brew install mysql
    brew services start mysql
    printf "\n\n"
fi
