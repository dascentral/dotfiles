#!/bin/sh

#===================================================================================
# iTerm2 Setup Script - macOS
#===================================================================================
#
# DESCRIPTION
# Script that gets iTerm2 ready for use.
#
# PARAMETERS
# - N/A
#
# ACTIONS PERFORMED
# - Sets the Oh My Zsh theme
# - Adds a reference to import aliases at the end of the ~/.zshrc file
#
# ASSUMPTIONS
# - N/A
#
#===================================================================================

path="/Users/$USER/.zshrc"

# Set the theme
sed -i '.original' "s/robbyrussell/af-magic/g" $path

# Add a reference to aliases
printf "\n" >> $path
printf "# Source Aliases\n" >> $path
printf "source ~/.aliases\n" >> $path
printf "\n" >> $path

#===================================================================================
# Currently rolling with this entry:
# export PATH="$PATH:/Users/douglas.smith/.composer/vendor/bin"
#
# Default Paths
# /usr/local/bin
# /usr/bin
# /bin
# /usr/sbin
# /sbin
#
# Additional Paths to Consider
# /usr/local/sbin - Not sure who needs this.
# /usr/local/mysql/bin - This seems to be firing automatically following a Brew install.
# /Users/douglas.smith/.composer/vendor/bin - Definitely want to add this one.
#
# Added via Installation
# /Users/douglas.smith/.nvm/versions/node/v8.7.0/bin
#===================================================================================
