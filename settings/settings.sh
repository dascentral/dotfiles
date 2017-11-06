#!/bin/sh

#===================================================================================
# Resources:
# - https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#===================================================================================

printf "\033[1;37mSynchronizing Mac Settings.\033[0m\n\n"



#===================================================================================
# Setup
#===================================================================================

# Close any open System Preferences panes. Prevents overriding changes below.
osascript -e 'tell application "System Preferences" to quit'



#===================================================================================
# macOS - General
#===================================================================================

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Set the default wallpaper image - Primarily used on login screen
#rm -rf ~/Library/Application Support/Dock/desktoppicture.db
#sudo rm -rf /System/Library/CoreServices/DefaultDesktop.jpg
#sudo ln -s /Users/${USER}/Dropbox/Photos/Wallpaper/Iceland/iceland-08.jpg /System/Library/CoreServices/DefaultDesktop.jpg



#===================================================================================
# macOS - Trackpad, mouse, keyboard, Bluetooth accessories, and input
#===================================================================================

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3



#===================================================================================
# macOS - Finder
#===================================================================================

# Adjusting which desktop icons are displayed
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set Desktop as the default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "PfDe"

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false


#===================================================================================
# iTerm2
#===================================================================================

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Dropbox/DAS/Software/iTerm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Copy Plugin modifications into place
cp /Users/${USER}/Workspace/dotfiles/settings/iTerm2/custom/plugins/git/git.plugin.zsh /Users/${USER}/.oh-my-zsh/custom/plugins/git

# Copy Theme modifications into place
cp /Users/${USER}/Workspace/dotfiles/settings/iTerm2/custom/themes/af-magic.zsh-theme /Users/${USER}/.oh-my-zsh/custom/themes



#===================================================================================
# Sublime Text - SublimePhpCsFixer
#===================================================================================

# Setup folder for package settings
if [ ! -e "/Users/${USER}/.sublime" ]; then
    mkdir /Users/${USER}/.sublime
fi

# Copy settings into place
cp /Users/${USER}/Workspace/dotfiles/sublime/SublimePhpCsFixer.sublime-settings /Users/${USER}/.sublime
sed -i '.original' "s/USERNAME/${USER}/g" /Users/${USER}/.sublime/SublimePhpCsFixer.sublime-settings



#===================================================================================
# PHP-CS-Fixer
#===================================================================================

phpcsfixer_folder="/usr/local/var/php-cs-fixer"

# Setup folder for package settings
if [ ! -e $phpcsfixer_folder ]; then
    mkdir $phpcsfixer_folder
fi

# Copy settings into place
cp /Users/$USER/Workspace/dotfiles/settings/php/.phpcsfixer $phpcsfixer_folder/
