# dotfiles

## Introduction

dotfiles is a series of customizations that help me personalize my system.

The notion of creating such a repo is not my own. Initially I forked a repo from
[Zack Holman](https://github.com/holman/dotfiles) but quickly realized I did not
understand much of what was going on. So instead of simply copying his work and
customizing it for my use, I decided to start from scratch and slowly add
functionality so that I could better understand what Zack or others have done.

No doubt many of the conventions leveraged were inspired by or copied
directly from Zack's repo. Credit where credit is due.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read Zack's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).


## Repository Contents
Rather than exhaustively list the applications or software that is installed
within this README, I have tried to add comments to each of the install
scripts that live within the `install/` directory.

It is likely easiest for you to browse contents of the repo to better
understand what is accomplished via the installation script.


## Install
Installation can be accomplished via the script in the root of this repo:

```bash
./install.sh
```

The installation script can be safely run multiple times. Items that have
already been installed will be skipped.

Please note that the installation script will perform a hard reset before
attempting to bring down the latest from the origin repository. Any local
changes that have been made will be lost prior to installation.


## Resources & Inspiration
The following articles and repositories may provide inspiration as you setup
your own dotfiles repository.


### Articles
* [Dotfiles Are Meant to Be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) - Zack Holman, Aug 2010
* [Getting Started with Dotfiles](https://driesvints.com/blog/getting-started-with-dotfiles/) - Dries Vints, April 2016


### Repositories
* [dotfiles.github.io](https://dotfiles.github.io/) - Your unofficial guide to dotfiles on GitHub.
* [Zach Holman](https://github.com/holman/dotfiles)
* [Dries Vints](https://github.com/driesvints/dotfiles)