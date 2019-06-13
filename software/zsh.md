# Zsh

## Introduction

The [Z shell](https://en.wikipedia.org/wiki/Z_shell) (Zsh) is a Unix shell that can be used as an interactive login shell and as a powerful command interpreter for shell scripting. Zsh is an extended Bourne shell with a large number of improvements, including some features of Bash, ksh, and tcsh.

## Installation

Installation is accomplished via setup of the [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) package.

[https://github.com/robbyrussell/oh-my-zsh#basic-installation](https://github.com/robbyrussell/oh-my-zsh#basic-installation)

## Configuration

I typically make a few tweaks to the default `~/.zshrc`.

### Aliases

I include an aliases file found within this repo for a number of shortcuts. It is enabled via the following:

```bash
printf "\n" >> ~/.zshrc
printf "# Source Aliases\n" >> ~/.zshrc
printf "source ~/.aliases\n" >> ~/.zshrc
printf "\n" >> ~/.zshrc
source ~/.zshrc
```

### Path

I make a few additions to the system path that support execution of [Homebrew](homebrew.md), [MySQL](mysql.md), and [Composer](composer.md).

```bash
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/opt/mysql@5.7/bin
export PATH=$PATH:~/.composer/vendor/bin
```

### Themes

Oh My Zsh has a great number of [themes](https://github.com/robbyrussell/oh-my-zsh/wiki/themes) to help you customize your terminal session. Below is a list of themes that I like. "af-magic" and "blinks" are my favorites.

* af-magic
* blinks
* candy
* frontcube
* michelebologna
* wezm+

Enable af-magic via the following command:

```bash
sed -i '.original' "s/robbyrussell/af-magic/g" /Users/${USER}/.zshrc
```

## Plugins

* [zsh-artisan](https://github.com/jessarcher/zsh-artisan) - Strong in concept. I have not been able to get it to work correctly.
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
