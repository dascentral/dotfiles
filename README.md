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

Let's go ahead and clone this repository. I prefer to store its contents within the `~/.dotfiles`. All scripts and configurations assume that's the case.

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

The `bin/` folder of this repository contains a `dotfiles` script that executes a number of maintenance activities that helps keep the machine up-to-date. I try to run this script on a regular basis. (i.e. weekly)

The `.zshrc` includes `~/.dotfiles/bin` in the system path, so you can run this command from anywhere.

```shell
dotfiles
```
