# dotfiles

## Introduction

dotfiles is a series of customizations that help me personalize and maintain my system.

I was introduced to the concept by [Zack Holman](https://github.com/holman/dotfiles). Initially I forked his repo for my own use but quickly realized I did not understand much of what was going on. So, instead of simply copying his work, I decided to start from scratch and slowly add functionality so that I could better understand what Zack or others have done.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read Zack's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Inspiration & Resources

The following articles and repositories may provide inspiration as you setup your own dotfiles repository.

### Articles

* [Dotfiles Are Meant to Be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) — Zack Holman, Aug 2010
* [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles/) — Dries Vints, April 2016

### Repositories

* [dotfiles.github.io](https://dotfiles.github.io/) — Your unofficial guide to dotfiles on GitHub.
* [Dries Vints](https://github.com/driesvints/dotfiles)
* [Freek Van der Herten's](https://github.com/freekmurze/dotfiles)
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) — Great for mac
* [Michael Dyrynda](https://github.com/michaeldyrynda/dotfiles)
* [Zach Holman](https://github.com/holman/dotfiles)

## Software Installation

### Initial Setup

The following software serves as the foundation for everything that goes into setting up a new machine:

* [PHP](https://www.php.net/) - Because I'm a PHP developer
* [Composer](https://getcomposer.org/) - A Dependency Manager for PHP
* [Homebrew](https://brew.sh/) - The Missing Package Manager for macOS (or Linux)

Scripted installation of this software is available via the setup script:

```bash
./setup.sh
```

### Scripted

Once [Composer](software/composer.md) and [Homebrew](software/homebrew.md) have been installed, the `software/install.sh` script will automate installation of the following items:

#### Composer

* [consolidation/cgr](https://github.com/consolidation/cgr)
* [dascentral/hubflow-release](https://packagist.org/packages/dascentral/hubflow-release)
* [friendsofphp/php-cs-fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
* [laravel/installer](https://laravel.com/docs/master/installation#installing-laravel)
* [laravel/valet](https://laravel.com/docs/master/valet)
* [squizlabs/php_codesniffer](https://github.com/squizlabs/PHP_CodeSniffer)

#### Homebrew

* [ack](https://beyondgrep.com/install/)
* [Alfred 4](https://www.alfredapp.com/)
* [Aerial Screen Saver](https://github.com/JohnCoates/Aerial)
* [Bartender](https://www.macbartender.com)
* [Docker](https://www.docker.com/products/docker-desktop)
* [Firefox](https://www.mozilla.org/en-US/exp/firefox/new/)
* [GnuPG](https://gnupg.org)
* [Google Backup and Sync](https://www.google.com/drive/download/backup-and-sync/)
* [Google Chrome](https://www.google.com/chrome)
* [iTerm2](https://www.iterm2.com/)
* [Mac App Store CLI](https://github.com/mas-cli/mas)
* [MacDown](https://macdown.uranusjr.com/)
* [Postman](https://www.getpostman.com)
* [Quick Look Plugins](https://github.com/sindresorhus/quick-look-plugins)
* [Redis](https://redis.io/)
* [Rocket](https://matthewpalmer.net/rocket/)
* [SSH Copy ID](https://www.ssh.com/ssh/copy-id)
* [Spectacle](https://www.spectacleapp.com/)
* [Spotify](https://www.spotify.com/us/)
* [Sublime Text](www.sublimetext.com/)
* [TablePlus](https://tableplus.io)
* [Tower](https://www.git-tower.com/mac)
* [WhatsApp](https://www.whatsapp.com)
* [Visual Studio Code](https://code.visualstudio.com)

#### Idempotence

The `install.sh` script also keeps Homebrew and Composer up-to-date. The script is [idempotent](https://en.wikipedia.org/wiki/Idempotence) so I run it on a regular basis.

### App Store

I install the following software applications via the Mac App Store.

* [1Password](https://1password.com/)
* [Evernote](https://evernote.com/download)
* [MindNode](https://mindnode.com/)
* [Slack](https://slack.com/)
* [Transmit](https://panic.com/transmit/)
* [Tweetbot](https://tapbots.com/tweetbot/mac/)

### Manual

Some software applications require manual installation or customization via the command line. Installation and setup instructions are available for the following items:

* [HubFlow](software/hubflow.md)
* [Oh My Zsh](software/zsh.md)
* [Laravel Valet](software/laravel-valet.md)
* [MySQL](software/mysql.md)
* [NVM](software/nvm.md)

### Package Download

I use the following software applications across home and work computers. They must be installed via their installation packages because they either do not have a scripted installation option or I simply haven't found it yet.

* [4K Video Downloader](https://www.4kdownload.com/products/product-videodownloader)
* [Apache Directory Studio](http://directory.apache.org/studio/) - Requires [JDK8](https://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)
* Aurora HDR 2018
* [Charles Proxy](https://www.charlesproxy.com/)
* [Dash](https://kapeli.com/dash)
* [Egnyte Connect](https://akqa.egnyte.com/app/index.do#appstore/addons-integrations/)
* [ImageOptim](https://imageoptim.com/mac)
* [Sketch](https://www.sketchapp.com/)
* [Sonos](http://www.sonos.com/en-us/controller-app)

## Aliases

I lean heavily on aliases (probably too much) to remember commands and save keystrokes. Aliases are installed via the following command:

```bash
./install/aliases.sh
```

This installation script only copies aliases into place. The file will need to be sourced following installation:

```bash
source ~/.aliases
```

## Command-Line Configurations

While some system settings are configured automatically via the `settings/settings.sh` script, I still have a number of manual modifications that I make. My goal is always to limit the amount of manual work. This article helped me understand how to do so:

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

## Disable Gatekeeper

Some of the software that is automatically installed is published by what Apple considers "unidentified developers." The following command will disable the gatekeeper functionality:

```bash
sudo spctl --master-disable
```

If you run this command, be sure to only open software from sources that you trust.

## Printers

Do you own an HP LaserJet 1020 like me? If so, you'll need to get the drivers from Apple.

[https://support.apple.com/kb/DL1888?viewlocale=en_US&locale=en_US](https://support.apple.com/kb/DL1888?viewlocale=en_US&locale=en_US)

## Resources

### Alfred

* **Article:** Feb 2021 — [My Alfred Setup](https://stefanzweifel.io/posts/2021/02/03/my-alfred-setup/), by Stefan Zweifel