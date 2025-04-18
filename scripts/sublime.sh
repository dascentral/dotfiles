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
info "Linking Sublime Text settings to cloud storage."
declare -a links=(
    "Preferences.sublime-settings"
)
for item in ${links[@]}; do
    if [ ! -L "${LOCALPATH}/${item}" ]; then
        backup="${item%.*}.$current_date.${item##*.}"
        mv "${LOCALPATH}/${item}" "${LOCALPATH}/${backup}"
        ln -s "${CLOUDPATH}/${item}" "${LOCALPATH}/${item}"

        success "${item} - linked"
    else
        line "${item} - already linked"
    fi
done
printf "\n"

# create a symbolic link to the Sublime executable that can be executed globally
if [ ! -e /usr/local/bin/subl ]; then
   ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi
