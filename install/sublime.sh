#!/bin/sh

#===================================================================================
# Sublime Text
#===================================================================================

# Put /usr/local/bin scripts in place
printf "\033[1mCopying Sublime Text snippets...\033[0m"
rm /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets/*.sublime-snippet
cp sublime/snippets/* /Users/$USER/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/snippets
printf "\033[1m complete.\033[0m"

# Wrap it up
printf "\n\n"