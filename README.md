# dotfiles

## Introduction

This repository contains a series of automated customizations that help me personalize and maintain my Mac.

Special thanks to [Zack Holman](https://zachholman.com/) and [Dries Vints](https://driesvints.com/) for the inspiration that led to what you see within this repository. In many instances, what I have here is a direct copy of their work.

## New machine setup

### Preparation

Odds are you are migrating from an existing machine to another or you are setting up an additional computer that will match the setup of another. Before getting started, ensure you have a fresh backup of all of your data and settings.

- Commit and push any pending changes within local git repositories
- Move any important documents into cloud-based storage
- Save all of your work within apps that do not sync to the cloud
- Export any important data from you local (MySQL) database
- Update your [mackup](https://github.com/lra/mackup) to the latest version and run `mackup backup`

#### Update macOS

If you are setting up a new machine, odds are macOS is already up-to-date. However, check System Preferences on the new machine and install any pending updates.

### Generate an SSH key

We will need an SSH key to communicate with GitHub. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running the following command:

```shell
curl https://raw.githubusercontent.com/dascentral/dotfiles/HEAD/ssh.sh | sh -s "<your-key-name>"
```

### Clone this repository

Let's go ahead and clone this repository. I prefer to store its contents within the `~/.dotfiles`.

Note that issuing your first `git` command will prompt installation of the [Xcode Command Line Tools](https://mac.install.guide/commandlinetools/index.html). Go grab a coffee/snack/meal while that download and install takes place.

```bash
git clone git@github.com:dascentral/dotfiles.git ~/.dotfiles
```

### Installation

The following script installs and configures most of the software that I use on a new machine.

```bash
~/.dotfiles/install.sh
```

If you dig into that installation file, you'll note that it does a few things:

1. Installs and configures [Oh My Zsh](https://ohmyz.sh/)
2. Installs [Homebrew](https://brew.sh/), the Missing Package Manager for macOS (or Linux)
3. Executes `brew bundle` which installs the bulk of the software
4. Ensures [Composer](https://getcomposer.org/) is up-to-date and installs all global packages
5. Configures several applications

## Maintenance

I have a `dotfiles` script that I run regularly to keep the machine up-to-date. More details to come.

## Legacy Information

I need to give this information a scrub. More to come.

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



## Inspiration & Resources

I was introduced to the "dotfiles" concept by [Zack Holman](https://github.com/holman/dotfiles). Initially, I forked his repo for my own use but quickly realized I did not understand much of what was going on. So, instead of simply copying his work, I decided to start from scratch and slowly add functionality so that I could better understand what Zack or others have done.

If you're interested in the philosophy behind why projects like these are awesome, you might want to [read Zack's post on the subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

The following articles and repositories may provide additional inspiration as you setup your own dotfiles repository.

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

