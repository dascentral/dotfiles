# iTerm2

## Introduction

iTerm2 is a replacement for Terminal and the successor to iTerm.

## Installation

You have the following installation options:

1. Direct from the software developer: [https://www.iterm2.com/downloads.html](https://www.iterm2.com/downloads.html)
1. Via [Homebrew](https://brew.sh):

```bash
brew cask install iterm2
```

## Enable Custom Settings

I recommend running these commands from within the native Mac Terminal application. Best to keep iTerm closed while updating its settings.

### Specify the preferences directory

I store my iTerm2 settings with a cloud provide so that I can easily sync settings across computers. This command provides iTerm2 with the location of the customer folder.

```bash
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Path/To/Settings/Folder"
```

### Tell iTerm2 to use the custom preferences in the directory

```bash
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```

## Settings

*As I was setting up a new Mac, I realized iTerm2 offers the ability to save settings within a local file. I have moved my preferences to cloud storage and have configured my latest iTerm2 installation to leverage that file.*

*However, I am currently unsure if that settings file handles ALL options within the "Preferences" dialog so I am keeping these notes around for a while until I am able to confirm.*

* General > Window > Deselect “Native full screen windows”
* General > Closing > Select “Quit when all windows are closed"
* Profiles > Window > Set “Window Size” to 140 x 33
* Profiles > Text > Set “Font Size” to 14pt
* Profiles > Keys > Left option key acts as: +Esc
* Profiles > Keys > "Opt+Left” becomes "Send Escape Sequence” with "Esc + b”
* Profiles > Keys > "Opt+Right” becomes "Send Escape Sequence” with "Esc + f"
* Profiles > Keys > "Cmd+Left" becomes "Send Hex Codes" with "0x01"
* Profiles > Keys > "Cmd+Right" becomes "Send Hex Codes" with "0x05"
* Profiles > Keys > "Cmd+Delete" becomes "Send Hex Codes" with "0x15"
* Profiles > Keys > "Opt+Delete" becomes "Send Hex Codes" with "0x17"
* Keys > Select “Show/hide iTerm2 with a system-wide hotkey”

## Resources

"Next Word” Tip Source: [https://coderwall.com/p/h6yfda](https://coderwall.com/p/h6yfda)
