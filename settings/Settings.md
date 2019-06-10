# Manual Configurations

While I would love for all settings to be controlled programmatically, I just haven't had time to find the necessary commands. This folder contains an inventory of the manual customizations I make for various applications.

## 1Password

* Advanced > Click "Enable 3rd party app integrations"

## Alfred

* General > Set "Alfred Hotkey" to "Ctrl + Space"
* Appearance > Select "Alfred macOS" theme
* Features > Web Search > Replace "google" keyword to "g"
* Features > Web Search > Replace "maps" keyword to "gm"
* Features > 1Password > Click "Enabled 1Password Bookmarks"

## Evernote

### Preferences

#### General

* General > Uncheck “Show Evernote Helper in the menu bar"

#### Clipper

* Clipper > Uncheck “Bounce the dock icon once”
* Clipper > Uncheck “Play a sound"

#### Formatting

* Formatting > Change default font to Calibri 14pt - see below for details on enabling the Calibri font
* Formatting > Enable “Simplify formatting of pasted content”
* Formatting > Auto Format > Uncheck "Keyboard shortcuts automatically create lists, lines, and emojis"

#### Context

* Context > Uncheck “Show Context"

### Sidebar

* Remove "Recent Notes"

## Evernote Clipper

### Options

* Notebook selection > Always start in "Articles"
* Default clip action > Always start in "Simplified article"
* After clip > Automatically close Clipper
* Related results > Uncheck
* PDF page button > Uncheck

## Finder

### Desktop

Access Desktop settings via "View > Show View Options" and set the following:

* **Sorty by:** Name
* **Icon size:** 28 x 28
* **Label position:** Right

### Search

From within Finder's preferences pane:

* Advanced > When performing a search > Set to "Search the Current Folder"

## iTerm2

*As I was setting up a new Mac, I realized iTerm2 offers the ability to save settings
within a local file. I have moved my preferences to cloud storage and have configured
my latest iTerm2 installation to leverage that file.*

*However, I am currently unsure if that settings file handles ALL options within the
"Preferences" dialog so I am keeping these notes around for a while until I am
able to confirm.*

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

## Messages

### General

* Uncheck "Play sound effects"

### Accounts

* Uncheck my email address under "You can be reached for messages at:"

## Outlook

### Notifications & Sounds

* Preferences > Notifications & Sounds > Turn off Desktop alert
* Preferences > Notifications & Sounds > Turn off all sounds

### Reading

* Preferences > Reading > Mark items read after previewing for 1 second

### Signatures

* Preferences > Signatures > Add the signatures

### AutoCorrect

* Preferences > AutoCorrect > AutoFormat > Uncheck everything except "Internet and network paths with hyperlinks"

### Calendar

* Preferences > Calendar > Set work starts to "8:00am"
* Preferences > Calendar > Set work ends to "7:00pm"

## System Fonts

I like using Microsoft's "Calibri" font within Evernote. Microsoft packages its application fonts within the app bundle. They are not available by default to other macOS applications and will need to be added manually to Font Book. You can add the font files from within the app bundle.

* Browse to `/Applications`
* Right click on `Microsoft Word.app` and click "Show Package Contents"
* Browse to `/Contents/Resources/DFonts`

## System Preferences

### Accessibility

* Zoom > Check "Use scroll gesture with modifier keys to zoom"
* Display > Check “Reduce motion.”

### Desktop & Screen Saver

* Screen Saver > Select "Aerial" - Requires installation of the [Aerial](https://github.com/JohnCoates/Aerial) screen saver

### Dock

* Check "Minimize windows into the application icon"

### General

* Appearance > Select "Dark"

### Keyboard

* Keyboard > Touch Bar shows "Expanded Control Strip"
* Keyboard > Press Fn key to "Show App Controls"
* Text > Uncheck "Correct spelling automatically"
* Text > Uncheck "Capitalize words automatically"
* Text > Uncheck "Add period with double-space"
* Text > Uncheck "Use smart quotes and dashes"
* Shortcuts > Full Keyboard Access > Select "All controls"
* Shortcuts > Launchpad & Dock > Uncheck "Turn Dock Hiding On/Off"
* Shortcuts > Mission Control > Enable "Show Notification Center" with "Ctrl+N"
* Shortcuts > Mission Control > Enable "Turn Do Not Disturb On/Off" with "Ctrl+D"

### Mission Control

* Uncheck "Automatically rearrange Spaces based on most recent use"
* Hot Corners > Assign "Start Screen Saver" to upper right. Clear the rest.

### Mouse

* Enable "Secondary Click"

### Notifications

#### Microsoft Outlook

Turn off everything. I use the native Calendar app for all notifications.

#### Calendar

* Set alert style to "Banners"
* Uncheck "Show notification on lock screen"
* Uncheck "Show in Notification Center"

### Trackpad

* Enable "Secondary Click"
* Enable "Tap to click"
