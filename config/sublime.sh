#!/usr/bin/env bash

# cd into the packages folder
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/

# remove the existing User folder
rm -rf User

# add a symbolic link to the cloud location
ln -s ~/Documents/Software/Sublime/User

# create a symbolic link to the Sublime executable that can be executed globally
if [ ! -e /usr/local/bin/subl ]; then
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi
