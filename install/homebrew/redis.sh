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

# Installation
if [ ! -e $check ]; then
    printf "\033[1;33mInstalling $name...\033[0m\n"
    brew install redis
    brew services start redis
    printf "\n\n"
fi
