# dotfiles

## Introduction

This repository contains a series of automated customizations that help me personalize and maintain my Mac. Special thanks to [Zack Holman](https://zachholman.com/) and [Dries Vints](https://driesvints.com/) for inspiring what you see within this repository. In many instances, what I have here is a direct copy of their work.

If you're interested in the philosophy behind why projects like these are awesome, you might want to read the following articles on the subject:

* [Dotfiles Are Meant to Be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) — Zack Holman, Aug 2010
* [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles/) — Dries Vints, April 2016

### Repositories

The following repositories may provide additional examples from which to draw inspiration.

* [dotfiles.github.io](https://dotfiles.github.io/) — Your unofficial guide to dotfiles on GitHub
* [Dries Vints](https://github.com/driesvints/dotfiles)
* [Fabio Ivona](https://github.com/fabio-ivona/.dotfiles) — Linux-focused for those managing servers
* [Freek Van der Herten's](https://github.com/freekmurze/dotfiles)
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
* [Matt Stauffer](github.com/mattstauffer/dotfiles/)
* [Michael Dyrynda](https://github.com/michaeldyrynda/dotfiles)
* [Zach Holman](https://github.com/holman/dotfiles)

## New Machine Setup

### Preparation

When migrating from an existing machine to another or setting up an additional computer that will match the setup of another, you will want to ensure you have a fresh backup of all of your data and settings.

- Commit and push any pending changes within local git repositories
- Move any important documents into cloud-based storage
- Save all of your work within apps that do not sync to the cloud
- Update your [mackup](https://github.com/lra/mackup) to the latest version and run `mackup backup -f`

### Update macOS

If you are setting up a new machine, odds are macOS is already up-to-date. However, check System Settings on the new machine and install any pending updates.

### App Store

We install several software applications via the [Mac App Store CLI](https://github.com/mas-cli/mas), so ensure you are logged in to the App Store.

### Generate an SSH key

#### Via 1Password

In recent years, I've been using the 1Password [SSH agent](https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent) to securely store my SSH keys.

1. Download [1Password](https://1password.com/downloads/mac)
2. Open 1Password
3. Open "Settings"
4. Select "Developer"
5. Enable "Use the SSH Agent"
6. Click "Change SSH Config..."
7. Select "Edit Automatically"

#### Manually

If you are not a 1Password user, you can run the following command to [generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent). Once complete, add the key to your [GitHub profile](https://github.com/settings/keys).

```shell
curl https://raw.githubusercontent.com/dascentral/dotfiles/HEAD/ssh.sh | sh -s "<your-key-name>"
```

### Clone this repository

Let's go ahead and clone this repository. All scripts within this repository assume `~/.dotfiles` as the clone location. You may adjust this as you see fit. However, you will need to update all scripts accordingly.

Note that issuing your first `git` command will prompt installation of the [Xcode Command Line Tools](https://mac.install.guide/commandlinetools/index.html). Go grab a coffee/snack/meal while that download and install takes place.

```bash
git clone git@github.com:dascentral/dotfiles.git ~/.dotfiles
```

### Create a Brewfile

I use [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) to install the bulk of the software on a new machine. Before executing the main installation script, create a `Brewfile` to the root of the repository.

I have placed two samples within `config/Brewfile` that you may use as a template. You can execute the following command to adopt my personal configuration:

```bash
cp config/Brewfile/Brewfile.example ./Brewfile
```

### Install Fira Code

I use the [Fira Code](https://github.com/tonsky/FiraCode) font within Cursor and VS Code and have configured the install script to automatically update the application settings accordingly. As a result, I made installation of Fira Code a prerequisite for the full software installation that happens next.

### Installation

The following script installs and configures most of the software that I use on a new machine.

```bash
~/.dotfiles/install.sh
```

If you dig into that installation file, you'll note that it does a few things:

1. Installs [Homebrew](https://brew.sh/), the Missing Package Manager for macOS (or Linux)
2. Executes `brew bundle`, which installs the bulk of the software
3. Ensures [Composer](https://getcomposer.org/) is up-to-date and installs all global packages
4. Configures Git
5. Configures [Mackup](https://github.com/lra/mackup)
6. Configures [Cursor](https://www.cursor.com)
7. Configures [VS Code](https://code.visualstudio.com/)
8. Configures [Sublime Text](https://www.sublimetext.com)
9. Customizes macOS settings

The script is idempotent, so it can be run multiple times without concern.

## Maintenance

The `bin/` folder of this repository contains a `dotfiles` script that executes a number of maintenance activities that helps keep the machine up-to-date. I try to run this script on a regular basis. (i.e. weekly)

The `.zshrc` includes `~/.dotfiles/bin` in the system path, so you can run this command from anywhere.

```shell
dotfiles
```

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
