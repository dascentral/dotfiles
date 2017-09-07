#!/bin/sh

#===================================================================================
# RVM - https://rvm.io/rvm/install
#===================================================================================

# setup
name="RVM"
check="/Users/$USER/.rvm/scripts/rvm"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install mpapis public key
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# Install RVM stable with ruby
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Source that jam
source /Users/$USER/.rvm/scripts/rvm

# Wrap it up
printf "\n\n"