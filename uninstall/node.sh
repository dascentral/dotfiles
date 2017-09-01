#!/bin/sh

#===================================================================================
# Node Uninstall Script - macOS
#
# DESCRIPTION
# Removes all references to Node.
#
# NOTES
# - No notes of merit.
#
# PARAMETERS
# - No parameters required.
#
# ACTIONS PERFORMED
# - Uninstalls NodeJS.
#
# ASSUMPTIONS
# - No assumptions. Run it!
#
#===================================================================================

# Clean /usr/local/lib
cd /usr/local/lib
sudo rm -rf node
sudo rm -rf node_modules

# Clean /usr/local/include
cd /usr/local/include
sudo rm -rf node
sudo rm -rf node_modules

# Clean /usr/local/bin
cd /usr/local/bin
sudo rm node

# Uninstall Brew
if [ -e "/usr/local/Cellar/node" ]; then
    brew uninstall node
fi
