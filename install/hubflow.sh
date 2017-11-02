#!/bin/sh

#===================================================================================
# HubFlow - https://datasift.github.io/gitflow/TheHubFlowTools.html
#===================================================================================

# setup
name="HubFlow"
check="/Users/${USER}/Workspace/gitflow"

# Check if installed
if [ -e $check ]; then
    printf "\033[1;37m$name already installed.\n\n\033[0m"
    exit 0;
fi

# Install
printf "\033[1;33mInstalling $name...\033[0m\n"
git clone https://github.com/datasift/gitflow ~/Workspace/gitflow
cd ~/Workspace/gitflow
sudo ./install.sh

# Wrap it up
printf "\n\n"
