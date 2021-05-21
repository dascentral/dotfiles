#!/usr/bin/env bash

source /Users/${USER}/dotfiles/shell/.functions

# configure User folder
LOCALPATH="${HOME}/Library/Application Support/Sublime Text 3/Packages/User"
CLOUDPATH="${PRIVATE}/settings/Sublime/User"

# confirm the expected settings location exists
if [ ! -e "${CLOUDPATH}" ]; then
    abort "Sublime settings folder does not exist.\n"
fi

# link to cloud storage
if [ ! -L "${LOCALPATH}" ]; then
    info "Configuring Sublime Text"
    rm -rf "${LOCALPATH}"
    ln -s "${CLOUDPATH}" "${LOCALPATH}"
    printf "\n"
fi

# create a symbolic link to the Sublime executable that can be executed globally
if [ ! -e /usr/local/bin/subl ]; then
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi
