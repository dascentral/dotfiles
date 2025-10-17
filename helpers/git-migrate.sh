#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/lib/functions.sh

DIR="repository_migration"
SOURCE=""
TARGET=""

info "Creating working directory."
mkdir ${DIR}

printf "\n"
info "Cloning source repository."
git clone --bare ${SOURCE} ${DIR}

printf "\n"
info "Pushing a mirror to the target repository."
git -C ${DIR} push --mirror ${TARGET}

printf "\n"
info "Removing working directory."
rm -rf ${DIR}
