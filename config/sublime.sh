#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# configure User folder
LOCALPATH="${HOME}/Library/Application Support/Sublime Text/Packages/User"
CLOUDPATH="${DOTFILES}/settings/Sublime/User"

if [ ! -e "${CLOUDPATH}" ]; then
    abort "Sublime settings folder does not exist.\n"
fi

# TODO: Check for existence of Preferences file

current_date=$(date +"%Y%m%d")

# link to cloud storage
declare -a links=(
    "Preferences.sublime-settings"
)
for item in ${links[@]}; do
    if [ ! -L "${LOCALPATH}/${item}" ]; then
        info "Sublime Text - Linking ${item}"

        # create backup filename
        backup="${item%.*}.$current_date.${item##*.}"

        # backup file
        mv "${LOCALPATH}/${item}" "${LOCALPATH}/${backup}"

        # add symbolic link
        ln -s "${CLOUDPATH}/${item}" "${LOCALPATH}/${item}"

        # let it breathe
        printf "\n"
    fi
done


# link User folder to cloud storage - I do it by individiual files now
# if [ ! -L "${LOCALPATH}" ]; then
#     info "Configuring Sublime Text"
#     rm -rf "${LOCALPATH}"
#     ln -s "${CLOUDPATH}" "${LOCALPATH}"
#     printf "\n"
# fi

# It appears as though Homebrew takes care of this
# create a symbolic link to the Sublime executable that can be executed globally
#if [ ! -e /usr/local/bin/subl ]; then
#    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
#fi
