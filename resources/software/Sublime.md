# Sublime Text

## Introduction

Sublime Text is a proprietary cross-platform source code editor with a Python application programming interface. It natively supports many programming languages and markup languages, and functions can be added by users with plugins, typically community-built and maintained under free-software licenses. [Wikipedia](https://en.wikipedia.org/wiki/Sublime_Text)

## Installation

You have the following installation options:

1. Direct from the software developer: [https://www.sublimetext.com/](https://www.sublimetext.com/)
1. Via [Homebrew](https://brew.sh):

```bash
brew cask install sublime-text
```

If you have your Sublime preferences already stored in the cloud, **link your preferences before opening the app**.

## Configuration

### Cloud Preferences

In order to ensure a consistent experience across computers, I store my settings with a cloud provider. If you are pursuing a similar approach, you'll want to customize the location in the command below.

```bash
cd /Users/${USER}/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -rf User
ln -s ~/.private/settings/Sublime/User
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

## Resources

* [Laracasts: Sublime Text Mastery](https://laracasts.com/series/sublime-text-mastery)
* [Minimalist Sublime Text 3 Setup for PHP](https://laravel-news.com/minimalist-sublime-text-3-setup-for-php)
