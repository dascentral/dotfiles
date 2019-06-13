#!/usr/bin/env bash

#===================================================================================
# Docker - https://www.docker.com/products/docker-desktop
#===================================================================================

# setup
name="Docker"
check="/Applications/Docker.app"

# Installation
if [ ! -e $check ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    brew cask install docker
    printf "\n\n"
fi
