#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

if [ ! -e "${WORKSPACE}" ]; then
    info "Creating 'workspace' directory"
    mkdir -p ${HOME}/Workspace
fi

if [ ! -e "${WORKSPACE}/gitflow" ]; then
    git clone https://github.com/datasift/gitflow ${WORKSPACE}/gitflow
    cd ${WORKSPACE}/gitflow
    sudo ${WORKSPACE}/gitflow/install.sh
fi
