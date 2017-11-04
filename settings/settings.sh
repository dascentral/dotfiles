#!/bin/sh

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
