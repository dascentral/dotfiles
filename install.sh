#!/bin/sh

#===================================================================================
# macOS Setup Script - macOS 10.11.3
#
# DESCRIPTION
# A series of customizations that personalizes a macOS system and installs
# various software packages that are frequently used.
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
# - No assumptions. Run it!
#
#===================================================================================

# Install Homebrew and Various 
./install/homebrew.sh

# COMMAND LINE UTILITIES

# Install SSH Copy ID
if [ ! -e "/usr/local/bin/ssh-copy-id" ]; then
    brew install ssh-copy-id
fi

# Install ack - Better tool than grep
if [ ! -e "/usr/local/bin/ack" ]; then
    brew install ack
fi

# WEB DEVELOPMENT

# PHP - Composer
./install/composer.sh

# PHP - Install PHP Coding Standards Fixer
#composer global require friendsofphp/php-cs-fixer

# Node
./install/nvm.sh

# Ruby
./install/rvm.sh

# Gulp
#npm install -g gulp