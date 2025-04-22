#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# configure script
LOCALPATH="${HOME}/Library/Application Support/Sublime Text/Packages/User"
CLOUDPATH="${DOTFILES}/settings/Sublime/User"
SETTINGS="Preferences.sublime-settings"

if [ ! -e "${CLOUDPATH}" ]; then
    abort "Sublime settings folder does not exist.\n"
fi

# IF local path does not exist, output warning and skip execution
# Install after opening Sublime Text, installing Package Control, and installing "Monokai Pro"

if [ ! -e "${LOCALPATH}" ]; then
    mkdir -p "${LOCALPATH}"
fi

# backup existing settings
if [ -e "${LOCALPATH}/${SETTINGS}" ] && [ ! -L "${LOCALPATH}/${SETTINGS}" ]; then
    info "Backing up default Sublime Settings."
    current_date=$(date +"%Y%m%d")
    backup="${SETTINGS%.*}.$current_date.${SETTINGS##*.}"
    mv "${LOCALPATH}/${SETTINGS}" "${LOCALPATH}/${backup}"
fi

# link to cloud storage
info "Linking Sublime Text settings to cloud storage."
if [ ! -L "${LOCALPATH}/${SETTINGS}" ]; then
    ln -s "${CLOUDPATH}/${SETTINGS}" "${LOCALPATH}/${SETTINGS}"
    success "${SETTINGS} - linked"
else
    line "${SETTINGS} - already linked"
fi
printf "\n"

# create a symbolic link to the Sublime executable that can be executed globally
if [ ! -e /usr/local/bin/subl ]; then
   ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi
