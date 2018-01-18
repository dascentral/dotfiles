# Sublime Text

## Overview
This "installation" file is more about configuring Sublime Text following installation.


## Installation

### Create Settings Folder
```
mkdir /Users/${USER}/.sublime
```

### Install SublimePhpCsFixer Settings
```
cp /Users/${USER}/dotfiles/sublime/SublimePhpCsFixer.sublime-settings /Users/${USER}/.sublime
sed -i '.original' "s/USERNAME/${USER}/g" /Users/${USER}/.sublime/SublimePhpCsFixer.sublime-settings
```
