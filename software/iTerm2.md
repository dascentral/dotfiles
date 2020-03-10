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

I store my iTerm2 settings with a cloud provider so that I can easily sync settings across computers. This command provides iTerm2 with the location of the customer folder.

```bash
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Path/To/Settings/Folder"
```

And this command tells iTerm2 to use the preferences within the custom folder:

```bash
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```

## Resources

"Next Word” Tip Source: [https://coderwall.com/p/h6yfda](https://coderwall.com/p/h6yfda)
