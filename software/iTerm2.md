# iTerm2

## Introduction

iTerm2 is a replacement for Terminal and the successor to iTerm.

[https://www.iterm2.com/downloads.html](https://www.iterm2.com/downloads.html)

## Enable Custom Settings

I recommend running these commands from within the native Mac Terminal application. Best to keep iTerm closed while updating its settings.

### Specify the preferences directory

I keep my iTerm2 settings files stored on Google Drive so that I can easily sync settings across computers. This command provides iTerm2 with the location of the customer folder.

```bash
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/GDrive/Documents/Software/iTerm2"
```

### Tell iTerm2 to use the custom preferences in the directory

```bash
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```

### Troubleshooting

I moved my settings from Google Drive to iCloud recently and have been getting an error every time I load the application for reasons that I have not yet been able to fully understand. A few links that I'll come back to:

* [failed to load preferences from custom directory](https://gitlab.com/gnachman/iterm2/issues/2879)
* [Missing or malformed file at ""](https://gitlab.com/gnachman/iterm2/issues/4170)

## Resources

"Next Word” Tip Source: [https://coderwall.com/p/h6yfda](https://coderwall.com/p/h6yfda)
