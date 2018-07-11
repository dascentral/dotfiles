# iTerm2

## Installation

[Download](https://www.iterm2.com/downloads.html) and install iTerm2.

## Enable Custom Settings

I recommend running these commands from within the native Mac Terminal application. Best to keep iTerm closed while updating its settings.

### Specify the preferences directory

```bash
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Dropbox/DAS/Software/iTerm2"
```

### Tell iTerm2 to use the custom preferences in the directory

```bash
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```
