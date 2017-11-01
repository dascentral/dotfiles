#!/bin/sh

#===================================================================================
# Oh My Zsh
#===================================================================================

path="/Users/$USER/.zshrc"

# Set the theme
sed -i '.original' "s/robbyrussell/af-magic/g" $path

# Add a reference to aliases
printf "\n" >> $path
printf "# Source Aliases\n" >> $path
printf "source ~/.aliases\n" >> $path
printf "\n" >> $path

# Update the Path
#export PATH="/bin:/usr/sbin:/usr/local/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/local/mysql/bin:/usr/local/munki:/Users/douglas.smith/.composer/vendor/bin:/Users/douglas.smith/Library/Android/sdk/tools:/Users/douglas.smith/Library/Android/sdk/platform-tools:/Users/douglas.smith/Library/Android/sdk"

# Paths to Consider Adding
#export PATH="$PATH:/usr/local/sbin:/usr/local/mysql/bin:/Users/douglas.smith/.composer/vendor/bin"

# Default Paths
# /usr/local/bin
# /usr/bin
# /bin
# /usr/sbin
# /sbin

# Added via Installation
# /Users/douglas.smith/.nvm/versions/node/v8.7.0/bin
