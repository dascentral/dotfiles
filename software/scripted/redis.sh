#!/usr/bin/env bash

# setup
name="Redis"
check="/usr/local/bin/redis-cli"
url="https://redis.io/"

# Installation
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew install redis
    brew services start redis
    printf "\n\n"
fi
