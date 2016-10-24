#!/bin/sh

#===================================================================================
# macOS Setup Script - macOS 10.11.3
#
# DESCRIPTION
# Facilitates installation of various software packages that I frequently use.
#
# NOTES
# - No notes of merit.
# 
# PARAMETERS
# - No parameters required.
#
# ACTIONS PERFORMED
# - See comments below. Easier to define the actions there.
# 
# ASSUMPTIONS
# - You're running macOS 10.11.3.
#
#===================================================================================

# Let it breathe
printf "\n"

# Install Homebrew
./install/homebrew.sh

# Command Line Utilities
./install/cli/ssh-copy-id.sh
./install/cli/ack.sh

# Web Development
./install/web/composer.sh
./install/web/nvm.sh
./install/web/rvm.sh

# PHP - Install PHP Coding Standards Fixer
#composer global require friendsofphp/php-cs-fixer

# Gulp
#npm install -g gulp