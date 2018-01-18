#!/bin/sh

#===================================================================================
# Redis - https://redis.io/
#===================================================================================
# Installation instructions via...
# https://medium.com/@petehouston/install-and-config-redis-on-mac-os-x-via-homebrew-eb8df9a4f298
#===================================================================================

# setup
name="Redis"
check="/usr/local/bin/redis-cli"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
brew install redis

# Start Redis now and at login
brew services start redis

# Wrap it up
printf "\n\n"
