# dotfiles

## Introduction

dotfiles is a series of customizations that help me personalize and maintain my system.

I was introduced to the concept by [Zack Holman](https://github.com/holman/dotfiles). Initially I forked his repo for my own use but quickly realized I did not understand much of what was going on. So, instead of simply copying his work, I decided to start from scratch and slowly add functionality so that I could better understand what Zack or others have done.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read Zack's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Inspiration & Resources

The following articles and repositories may provide inspiration as you setup your own dotfiles repository.

### Articles

* [Dotfiles Are Meant to Be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) - Zack Holman, Aug 2010
* [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles/) - Dries Vints, April 2016

### Repositories

* [dotfiles.github.io](https://dotfiles.github.io/) - Your unofficial guide to dotfiles on GitHub.
* [Dries Vints](https://github.com/driesvints/dotfiles)
* [Freek Van der Herten's](https://github.com/freekmurze/dotfiles)
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) - Great for mac
* [Zach Holman](https://github.com/holman/dotfiles)

### Uses

The "uses" notion is new (to me) and not quite the same as "dotfiles" but here are a few I'm jotting down briefly so that I can come back later and explore in more detail.

* [Wes Bos](https://wesbos.com/uses)
* [Jeffrey Way](https://laracasts.com/blog/laracasts-uses)
* [Nuno Maduro](https://nunomaduro.com/uses/)

## Software

The repository contains instructions for installation of all of the software packages and applications that I use on my local machine.

### Foundational Elements

The following software applications serve as the foundation for everything I do on my computer:

* [Google Chrome](https://www.google.com/chrome)
* [1Password](https://1password.com/)
* [Alfred](https://www.alfredapp.com/)
* [Spectacle](https://www.spectacleapp.com/)

The following applications support scripted installation of my most frequently used applications and keep my system up-to-date:

* [PHP](software/php.md)
* [Homebrew](software/homebrew.md)
* [Composer](software/composer.md)

### Scripted Installation

Once [Homebrew](software/homebrew.md) and [Composer](software/composer.md) have been installed, the `software/install.sh` script will automatically install the following items:

* [ack](http://beyondgrep.com/install/)
* [Aerial Screen Saver](https://github.com/JohnCoates/Aerial)
* [Bartender](https://www.macbartender.com/)
* [Composer Global Require](https://github.com/consolidation/cgr)
* [Docker](https://www.docker.com/products/docker-desktop)
* [GnuPG](https://www.gnupg.org/)
* [Laravel Installer](https://laravel.com/docs/master)
* [Mac App Store CLI](https://github.com/mas-cli/mas)
* [MacDown](https://macdown.uranusjr.com)
* [PHP Codesniffer](https://github.com/squizlabs/PHP_CodeSniffer)
* [PHP CS Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
* [Postman](https://www.getpostman.com)
* [Quick Look Plugins](https://github.com/sindresorhus/quick-look-plugins)
* [Redis](https://redis.io/)
* [Rocket](https://matthewpalmer.net/rocket/)
* [Spotify](https://www.spotify.com/us/)
* [SSH Copy ID](https://www.ssh.com/ssh/copy-id)
* [Sublime Text](software/Sublime.md)
* [TablePlus](https://www.tableplus.io)
* [Tower](https://www.git-tower.com/)
* [WhatsApp](https://www.whatsapp.com/download/)

The `install.sh` script also keeps Homebrew and Composer up-to-date. The script is [idempotent](https://en.wikipedia.org/wiki/Idempotence) so I try to run it on a regular basis.

### Manual Installation

Some software applications require manual installation or customization via the command line. Installation and setup instructions are available for the following items:

* [HubFlow](software/hubflow.md)
* [iTerm2](software/iTerm2.md) + [Oh My Zsh](software/zsh.md)
* [Laravel Valet](software/laravel-valet.md)
* [MySQL](software/mysql.md)
* [NVM](software/nvm.md)
* [Visual Studio Code](software/VSCode.md)

### Mac App Store

I install the following software applications via the Mac App Store.

* Dash
* [Evernote](https://evernote.com/download)
* [Slack](https://itunes.apple.com/app/slack/id803453959?ls=1&mt=12)
* Transmit
* Tweetbot

### Package Download

I use the following software applications across home and work computers. They must be installed via their installation packages because they either do not have a scripted installation option or I simply haven't found it yet.

* [Apache Directory Studio](http://directory.apache.org/studio/) - Requires [JDK8](https://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)
* Aurora HDR 2018
* [Charles Proxy](https://www.charlesproxy.com/)
* [Dash](https://kapeli.com/dash)
* [Google Backup and Sync](https://www.google.com/drive/download/)
* [Egnyte Connect Desktop App](https://akqa.egnyte.com/app/index.do#appstore/addons-integrations/)
* [ImageOptim](https://imageoptim.com/mac)
* MindNode Lite
* [Postman](https://www.getpostman.com/)
* [Rocket](https://matthewpalmer.net/rocket/)
* [Sequel Pro](http://www.sequelpro.com/download/)
* [Sketch](https://www.sketchapp.com/)
* [Sonos](http://www.sonos.com/en-us/controller-app)
* [Spotify](http://www.spotify.com/)

## Aliases

I lean heavily on aliases (probably too much) to remember commands and save keystrokes. Aliases are installed via the following command:

```bash
./aliases/install.sh
```

This installation script only copies aliases into place. The file will need to be sourced following installation.

```bash
source ~/.aliases
```

## Legacy Software

I removed the following items from the standard setup in June 2019:

* [FunctionFlip](http://kevingessner.com/software/functionflip/)
* [Handbrake](https://handbrake.fr/downloads.php)
* [FireFox](http://www.mozilla.org/en-US/firefox/new/)
* [Java](https://java.com/en/download/mac_download.jsp)
* [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jdk9-downloads-3848520.html)
* [Mac App Store CLI](https://github.com/mas-cli/mas)
* [PHP Xdebug](software/php71-xdebug.md)
* [PHPStorm](http://www.jetbrains.com/phpstorm/)
* [RVM](software/rvm.md)
* [Vagrant](http://www.vagrantup.com/downloads.html)
* [WordPress CLI](software/wp-cli.md)

## Command-Line Configurations

While some system settings are configured automatically via the `settings/settings.sh` script, I still have a number of manual modifications that I make. I have published most of those changes within the markdown file associated with each application beneath the `software` folder.

However, my goal is always to limit the amount of manual work. This article helped me understand how to do so:

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
