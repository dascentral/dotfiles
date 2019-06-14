#!/usr/bin/env bash

# setup
app="docker"
name="Docker"
check="/Applications/Docker.app"
url="https://www.docker.com/products/docker-desktop"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    brew cask install $app
    printf "\n\n"
fi
