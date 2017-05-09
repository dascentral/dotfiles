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
printf "\033[1mInstalling $name...\033[0m"
if [ -e $check ]; then
    printf "\033[1m already installed.\n\n\033[0m"
    exit 0;
fi
printf "\n"

# Install Redis
brew install redis

# Start Redis now and at login
brew services start redis

# Wrap it up
printf "\n\n"