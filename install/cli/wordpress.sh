#!/bin/sh

#===================================================================================
# WP-CLI - http://wp-cli.org/
#===================================================================================

# setup
name="WP-CLI"
check="/usr/local/bin/wp"

# Check if installed
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
    exit 0;
fi
printf "\n"

# Install
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar $check

# Wrap it up
printf "\n\n"