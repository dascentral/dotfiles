# dotfiles

## Introduction

dotfiles is a series of customizations that help me personalize my system.

The notion of creating such a repo is not my own. Initially I forked a repo from [Zack Holman](https://github.com/holman/dotfiles) but quickly realized I did not understand much of what was going on. So instead of simply copying his work, I decided to start from scratch and slowly add functionality so that I could better understand what Zack or others have done.

No doubt many of the conventions leveraged were inspired by or copied directly from Zack's repo. Credit where credit is due.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read Zack's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Resources & Inspiration

The following articles and repositories may provide inspiration as you setup your own dotfiles repository.

### Articles

* [Dotfiles Are Meant to Be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) - Zack Holman, Aug 2010
* [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles/) - Dries Vints, April 2016
* [Freek Van der Herten's repo](https://github.com/freekmurze/dotfiles)

### Repositories

* [dotfiles.github.io](https://dotfiles.github.io/) - Your unofficial guide to dotfiles on GitHub.
* [Zach Holman](https://github.com/holman/dotfiles)
* [Dries Vints](https://github.com/driesvints/dotfiles)

## Software

The repository contains instructions for installation of all of the software packages and applications that I use on my local machine.

### Foundational Elements

[Homebrew](https://brew.sh/) and [Composer](https://getcomposer.org/) facilitate scripted installation of many of my most frequently used software applications. They also help me keep my system up-to-date.

### Scripted Installation

Once [Homebrew](https://github.com/dascentral/dotfiles/blob/master/install/homebrew.md) and [Composer](https://github.com/dascentral/dotfiles/blob/master/install/composer.md) have been installed, the `install/install.sh` script will automatically install the following items:

* [ack](http://beyondgrep.com/install/)
* [Aerial](https://github.com/JohnCoates/Aerial)
* [Composer Global Require](https://github.com/consolidation/cgr)
* [GnuPG](https://www.gnupg.org/)
* [Mac App Store CLI](https://github.com/mas-cli/mas)
* [PHP Codesniffer](https://github.com/squizlabs/PHP_CodeSniffer)
* [PHP CS Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
* [Quick Look Plugins](https://github.com/sindresorhus/quick-look-plugins)
* [Redis](https://redis.io/)
* [SSH Copy ID](https://www.ssh.com/ssh/copy-id)

The `install.sh` script also keeps Homebrew and Composer updated so I try to run that script on a regular basis.

### Manual Installation

Some software applications require manual installation or customization via the command line. Installation and setup instructions are available for the following items:

* [Bartender](https://www.macbartender.com/)
* [HubFlow](https://datasift.github.io/gitflow/TheHubFlowTools.html)
* [iTerm2](https://www.iterm2.com)
* [MySQL](https://www.mysql.com/)
* [NVM](https://github.com/creationix/nvm)
* [PHP](http://www.php.net)
* [PHP Xdebug](https://xdebug.org/)
* [RVM](https://rvm.io/rvm/install)
* [Sublime Text](https://www.sublimetext.com)
* [Visual Studio Code](https://code.visualstudio.com/)
* [WordPress CLI](http://wp-cli.org)

### Mac App Store

I install the following software applications via the Mac App Store.

* Dash
* Transmit
* Tweetbot

### Package Download

I use the following software applications across home and work computers. They must be installed via their installation packages because they either do not have a scripted installation option or I simply haven't found it yet.

* [Apache Directory Studio](http://directory.apache.org/studio/)
* Aurora HDR 2018
* [Charles Proxy](https://www.charlesproxy.com/)
* [Dash](https://kapeli.com/dash)
* [Docker](https://store.docker.com/editions/community/docker-ce-desktop-mac)
* [Google Drive](https://www.google.com/drive/download/)
* [Egnyte](https://akqa.egnyte.com/SimpleUI/appsPage.do)
* [Evernote](http://www.evernote.com/)
* [FireFox](http://www.mozilla.org/en-US/firefox/new/)
* [FunctionFlip](http://kevingessner.com/software/functionflip/)
* [Handbrake](https://handbrake.fr/downloads.php)
* [ImageOptim](https://imageoptim.com/mac)
* [Java](https://java.com/en/download/mac_download.jsp)
* [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jdk9-downloads-3848520.html)
* MindNode Lite
* [PHPStorm](http://www.jetbrains.com/phpstorm/)
* [Postman](https://www.getpostman.com/)
* [Sequel Pro](http://www.sequelpro.com/download/)
* [Sketch](https://www.sketchapp.com/)
* [Sonos](http://www.sonos.com/en-us/controller-app)
* [Spectacle](https://www.spectacleapp.com/)
* [Spotify](http://www.spotify.com/)
* [Tower](https://www.git-tower.com/)
* [Vagrant](http://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [WhatsApp](https://www.whatsapp.com/download/)

## Aliases

I lean heavily on aliases (probably too much) to remember commands and save keystrokes. Aliases as installed via the following command:

```bash
./aliases/install.sh
```

This installation script only copies aliases into place. The file will need to be sourced following installation.

```bash
source ~/.aliases
```
