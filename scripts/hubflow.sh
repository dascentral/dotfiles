#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/config.sh

if [ ! -e "${CODE}" ]; then
    info "Creating '~/Workspace' directory"
    mkdir -p ${HOME}/Workspace
fi

if [ ! -e "${CODE}/gitflow" ]; then
    git clone https://github.com/datasift/gitflow ${CODE}/gitflow
    cd ${CODE}/gitflow
    sudo ${CODE}/gitflow/install.sh
fi
