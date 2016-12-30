#!/bin/sh

#===================================================================================
# macOS Setup Script - macOS 10.11.3
#
# DESCRIPTION
# Facilitates installation of various software packages that I frequently use.
#
# NOTES
# - This script is safe to run multiple times.
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

clear

# Let it breathe
printf "\n"

# Update Repository
./install/update.sh

# Global Elements
./install/bin.sh
./install/homebrew.sh

# Command Line Utilities
./install/cli/mas.sh
./install/cli/ssh-copy-id.sh
./install/cli/ack.sh

# Web Development
./install/web/composer.sh
./install/web/cgr.sh
./install/web/nvm.sh
./install/web/rvm.sh
./install/web/yarn.sh

# PHP - Install PHP Coding Standards Fixer
#composer global require friendsofphp/php-cs-fixer

# Gulp
#npm install -g gulp