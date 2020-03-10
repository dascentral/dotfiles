#!/usr/bin/env bash

# cd into the packages folder
cd /Users/${USER}/Library/Application\ Support/Sublime\ Text\ 3/Packages/

# remove the existing User folder
rm -rf User

# add a symbolic link to the cloud location
ln -s ~/GDrive/Documents/Software/Sublime/User
