# Sublime Text

## Overview

The instructions below have not been thoroughly tested. I think they're right but my last setup was a bit clunky. It is also possible the setup process has changed since my last installation.

### Setup Resources

* [Laracasts: Sublime Text Mastery](https://laracasts.com/series/sublime-text-mastery)
* [Minimalist Sublime Text 3 Setup for PHP](https://laravel-news.com/minimalist-sublime-text-3-setup-for-php)

## Installation

[Download](https://www.sublimetext.com/) & install.

If you have your Sublime user preferences already stored in the cloud, **do NOT open** the app just yet. Link your preferences and then open the app.

Instructions are below on how to properly link those preferences.

## Customize the Installation

### Link Preferences

In order to ensure a consistent experience across computers, I store my settings within iCloud. If you are pursuing a similar approach, you'll want to customize the location in the command below.

```bash
cd /Users/${USER}/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -rf User
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Software/Sublime/User
```

### Create Application Shortcut

The following command will create a symbolic link to the Sublime executable that can be executed globally.

```bash
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

### Install Package Control

With user preferences now linked, you are free to open the application. Package Control is a necessary addition to any installation. Installation can be completed via “Tools > Install Package Control...”

I would exit Sublime and then re-open it. All should be golden at this point. (Fingers crossed.)

### Configure SublimePhpCsFixer

I keep a copy of my preferred SublimePhpCsFixer settings within this repo. I copy it to a central location on any new machine.

```bash
mkdir /Users/${USER}/.sublime
cp /Users/${USER}/dotfiles/sublime/SublimePhpCsFixer.sublime-settings /Users/${USER}/.sublime
sed -i '.original' "s/USERNAME/${USER}/g" /Users/${USER}/.sublime/SublimePhpCsFixer.sublime-settings
```
