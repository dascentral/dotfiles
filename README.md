dotfiles
=============

## Introduction

dotfiles is a series of customizations that help me personalize my system.

The notion of creating such a repo is not my own. Initially I forked a repo from
[Zack Holman](https://github.com/holman/dotfiles) but quickly realized I did not
understand much of what was going on. So instead of simply copying his work and
customizing it for my use, I decided to start from scratch and slowly add
functionality so that I could better understand what Zack had done.

No doubt many of the conventions leveraged were inspired by or copied
directly from Zack's repo. Credit where credit is due.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read Zack's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Install
Installation can be accomplished via the script in the root of this repo:

```bash
./install.sh
```

The installation scripot can be safely run multiple times. Items that have
already been installed will be skipped.

## Updates
To update the local dotfiles, run the `update.sh` shell script. This will
pull the latest from the `master` branch and put new items into place.

```bash
./update.sh
```