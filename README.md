# dotfiles

## Introduction

dotfiles is a series of customizations that help me personalize and maintain my system.

I was introduced to the concept by [Zack Holman](https://github.com/holman/dotfiles). Initially I forked his repo for my own use but quickly realized I did not understand much of what was going on. So, instead of simply copying his work, I decided to start from scratch and slowly add functionality so that I could better understand what Zack or others have done.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read Zack's post on the subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Inspiration & Resources

The following articles and repositories may provide inspiration as you setup your own dotfiles repository.

### Articles

* [Dotfiles Are Meant to Be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) — Zack Holman, Aug 2010
* [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles/) — Dries Vints, April 2016

### Repositories

* [dotfiles.github.io](https://dotfiles.github.io/) — Your unofficial guide to dotfiles on GitHub
* [Dries Vints](https://github.com/driesvints/dotfiles)
* [Freek Van der Herten's](https://github.com/freekmurze/dotfiles)
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
* [Michael Dyrynda](https://github.com/michaeldyrynda/dotfiles)
* [Zach Holman](https://github.com/holman/dotfiles)

## New Machine Setup

I switched to use of a `Brewfile` in February 2021 and completely overhauled how I would setup a new computer, inclusive of all software installations and configurations.

All information below will be prone to error until I have an opportunity to try it out on a new machine.

### Clone the Repository

First and foremost, we'll need to clone this repository. All scripts assume it is cloned to `~/dotfiles`.

```bash
git clone git@github.com:dascentral/dotfiles.git ~/dotfiles
```

### Software Installation

I have a new installation script that *should* install all software that I use on a new machine. If you dig into that installation file, you'll note that it does a few things:

1. Installs [Homebrew](https://brew.sh/), the Missing Package Manager for macOS (or Linux)
2. Executes `brew bundle` which installs the bulk of the software
3. Links the PHP binaries for 7.4. I have not yet moved my local machine up to PHP 8.
4. Installs all global [Composer](https://getcomposer.org/) packages

### Application Configuration

WIP. I have not yet refactored the process by which I configure various elements of software.

The following will need special care and attention:

* iTerm2 + Oh My Zsh
* Sublime Text
* Visual Studio Code

### macOS Settings

WIP. It might be as simple as executing the following from the root of the repository:

```bash
source .macos
```

### Disable Gatekeeper

Some of the software installed via the `Brewfile` is published by what Apple considers "unidentified developers." The following command will disable the gatekeeper functionality:

```bash
sudo spctl --master-disable
```

If you run this command, be sure to only open software from sources that you trust.

### Printers

Do you own an HP LaserJet 1020 like me? If so, you'll need to get the drivers from Apple.

[https://support.apple.com/kb/DL1888?viewlocale=en_US&locale=en_US](https://support.apple.com/kb/DL1888?viewlocale=en_US&locale=en_US)

## Application Inventory

Below I've attempted to inventory the software that I install on each machine.

### Composer

* [dascentral/hubflow-release](https://packagist.org/packages/dascentral/hubflow-release)
* [friendsofphp/php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
* [laravel/installer](https://laravel.com/docs/master/installation#installing-laravel)
* [laravel/valet](https://laravel.com/docs/master/valet)
* [squizlabs/php_codesniffer](https://github.com/squizlabs/PHP_CodeSniffer)

### Desktop Apps

* [1Password](https://1password.com/)
* [Alfred 4](https://www.alfredapp.com/)
* [Aerial Screen Saver](https://github.com/JohnCoates/Aerial)
* [Bartender](https://www.macbartender.com)
* [Docker](https://www.docker.com/products/docker-desktop)
* [Evernote](https://evernote.com/download)
* [Firefox](https://www.mozilla.org/en-US/exp/firefox/new/)
* [Google Backup and Sync](https://www.google.com/drive/download/backup-and-sync/)
* [Google Chrome](https://www.google.com/chrome)
* [iTerm2](https://www.iterm2.com/)
* [MindNode](https://mindnode.com/)
* [Postman](https://www.getpostman.com)
* [Rocket](https://matthewpalmer.net/rocket/)
* [Slack](https://slack.com/)
* [Spectacle](https://www.spectacleapp.com/)
* [Spotify](https://www.spotify.com/us/)
* [Sublime Text](www.sublimetext.com/)
* [TablePlus](https://tableplus.io)
* [Tower](https://www.git-tower.com/mac)
* [Transmit](https://panic.com/transmit/)
* [Tweetbot](https://tapbots.com/tweetbot/mac/)
* [WhatsApp](https://www.whatsapp.com)
* [Visual Studio Code](https://code.visualstudio.com)

### Package Download

I use the following software applications across home and work computers. They must be installed via their installation packages because they either do not have a scripted installation option or I simply haven't found it yet.

* [4K Video Downloader](https://www.4kdownload.com/products/product-videodownloader)
* [Apache Directory Studio](http://directory.apache.org/studio/) - Requires [JDK8](https://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)
* Aurora HDR 2018
* [Charles Proxy](https://www.charlesproxy.com/)
* [Dash](https://kapeli.com/dash)
* [Egnyte Connect](https://akqa.egnyte.com/app/index.do#appstore/addons-integrations/)
* [ImageOptim](https://imageoptim.com/mac)
* [Sonos](http://www.sonos.com/en-us/controller-app)

## Command-Line Configurations

I have automated many of my macOS system configurations however, I still have a number of manual modifications that I make following setup of a new machine. My goal is always to limit the amount of manual work. This article helped me understand how to do so:

[https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/](https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/)

### Key Commands

**Print all domains**

```bash
defaults domains | tr ',' '\n'
```

**Print settings for a specific app**

```bash
defaults read [domain]
defaults read com.googlecode.iterm2
```

**Print specific key**

```bash
defaults read [domain] [key]
defaults read com.googlecode.iterm2 PrefsCustomFolder
```

**Write new settingss**

```bash
defaults read [domain] [key] [type] [value]
defaults write com.apple.Notes NotesContinuousSpellCheckingEnabled -bool true
```
