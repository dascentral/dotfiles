# dotfiles

## Introduction

dotfiles is a series of customizations that help me personalize and maintain my system.

I was introduced to the concept by [Zack Holman](https://github.com/holman/dotfiles). Initially, I forked his repo for my own use but quickly realized I did not understand much of what was going on. So, instead of simply copying his work, I decided to start from scratch and slowly add functionality so that I could better understand what Zack or others have done.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read Zack's post on the subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Inspiration & Resources

The following articles and repositories may provide inspiration as you setup your own dotfiles repository.

### Articles

* [Dotfiles Are Meant to Be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) — Zack Holman, Aug 2010
* [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles/) — Dries Vints, April 2016

### Repositories

* [dotfiles.github.io](https://dotfiles.github.io/) — Your unofficial guide to dotfiles on GitHub
* [Dries Vints](https://github.com/driesvints/dotfiles)
* [Fabio Ivona](https://github.com/fabio-ivona/.dotfiles) — Linux-focused for those managing servers
* [Freek Van der Herten's](https://github.com/freekmurze/dotfiles)
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
* [Matt Stauffer](github.com/mattstauffer/dotfiles/)
* [Michael Dyrynda](https://github.com/michaeldyrynda/dotfiles)
* [Zach Holman](https://github.com/holman/dotfiles)

## New Machine Setup

I switched to use of a `Brewfile` in February 2021 and completely overhauled how I would setup a new computer, inclusive of most software installations and configurations.

All information below will be prone to error until I have an opportunity to try it out on a new machine.

### Clone the Repository

First and foremost, we'll need to clone this repository. All scripts assume it is cloned to `~/dotfiles`.

```bash
git clone git@github.com:dascentral/dotfiles.git ~/dotfiles
```

### Software Installation

#### Scripted

The following script installs most of the software that I use on a new machine.

```bash
./install.sh
```

If you dig into that installation file, you'll note that it does a few things:

1. Installs [Homebrew](https://brew.sh/), the Missing Package Manager for macOS (or Linux)
2. Executes `brew bundle` which installs the bulk of the software
3. Installs all global [Composer](https://getcomposer.org/) packages
4. Configures a few of the software applications

#### Manual

I've yet to nail automated installation of every piece of software on my machines. The following will need to be installed manually.

* [4K Video Downloader](https://www.4kdownload.com/products/product-videodownloader)
* [Apache Directory Studio](http://directory.apache.org/studio/) - Requires [JDK8](https://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html)
* Aurora HDR 2018
* [Charles Proxy](https://www.charlesproxy.com/)
* [Dash](https://kapeli.com/dash)
* [Egnyte Connect](https://akqa.egnyte.com/app/index.do#appstore/addons-integrations/)
* [Sonos](http://www.sonos.com/en-us/controller-app)

### macOS Settings

The `.macos` file within the root of the repository attempts to automatically configure as many system settings as possible. I haven't nailed them all, but this script takes on a good chunk of the work.

```bash
source .macos
```

A computer restart will likely be necessary after executing that command.

## Optional Configurations

### Gatekeeper

[Gatekeeper](https://en.wikipedia.org/wiki/Gatekeeper_(macOS)) is a security feature of macOS. Some of the software installed via the `Brewfile` is published by what Apple considers "unidentified developers."

You can circumvent the security feature by disabling Gatekeeper.

```bash
sudo spctl --master-disable
```

If you run this command, be sure to only open software from sources that you trust. You can always turn it back on after installing a restricted software application.

```bash
sudo spctl --master-enable
```

### Printers

Do you own an HP LaserJet 1020 like me? If so, you'll need to get the drivers from Apple.

[https://support.apple.com/kb/DL1888?viewlocale=en_US&locale=en_US](https://support.apple.com/kb/DL1888?viewlocale=en_US&locale=en_US)

## Command-Line Configurations

While I have automated many of my macOS system configurations via the `.macos` file, I still have a number of manual modifications that I make following setup of a new machine. My goal is always to limit the amount of manual work. This article helped me understand how to automate application settings:

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

