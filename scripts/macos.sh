#!/usr/bin/env bash

source /Users/${USER}/.dotfiles/shell/.functions

# macOS Settings Automation Script
# Apply custom user preferences for macOS (based on markdown script)

info "Customizing macOS."

# --- Appearance ---
# Auto Light/Dark Mode
defaults write -g AppleInterfaceStyleSwitchesAutomatically -bool true

# --- Accessibility ---
# Zoom with scroll gesture (Control key)
#defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
#defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Reduce motion
#defaults write com.apple.universalaccess reduceMotion -bool true

# --- Desktop & Dock ---
# Dock size to ~25% (approx 40px)
defaults write com.apple.dock tilesize -int 40

# Minimize windows into app icon
defaults write com.apple.dock minimize-to-application -bool true

# Auto-hide Dock
defaults write com.apple.dock autohide -bool true

# Hide recent apps in Dock
defaults write com.apple.dock show-recents -bool false

# Mission Control: Don’t rearrange Spaces
defaults write com.apple.dock mru-spaces -bool false

# Mission Control: Group windows by app
defaults write com.apple.dock expose-group-apps -bool true

# --- Keyboard ---
# Full keyboard access (tab navigation)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Text Input tweaks
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# --- Mouse ---
# Tracking speed (max is 3.0)
defaults write -g com.apple.mouse.scaling -float 2.9

# Enable right-click
defaults write -g com.apple.mouse.enableSecondaryClick -bool true

# Smart Zoom — cannot be set via `defaults`, GUI-only

# --- Trackpad ---
# Tracking speed
defaults write -g com.apple.trackpad.scaling -float 2.9

# Right-click (Secondary click on right side)
defaults write -g com.apple.trackpad.enableSecondaryClick -bool true
defaults write -g com.apple.trackpad.trackpadCornerClickBehavior -int 1

# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# --- Apply System Changes ---
killall Dock
killall SystemUIServer

success "Custom settings applied. Restart may be required."
printf "\n"
