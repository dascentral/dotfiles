#!/bin/sh

#===================================================================================
# Sublime Text
#===================================================================================

printf "\033[1mAdding Sublime Text symbolic link...\033[0m\n"

if [ ! -e "/usr/local/bin/subl" ]; then
   ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi

# Wrap it up
printf "\n"
