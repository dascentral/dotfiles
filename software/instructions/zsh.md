# Zsh

## Introduction

The [Z shell](https://en.wikipedia.org/wiki/Z_shell) (Zsh) is a Unix shell that can be used as an interactive login shell and as a powerful command interpreter for shell scripting. Zsh is an extended Bourne shell with a large number of improvements, including some features of Bash, ksh, and tcsh.

## Installation

Installation is accomplished via setup of the [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) package.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Aliases

I have an aliases file that I use within this repo for a number of shortcuts. It is enabled via the following:

```bash
printf "\n" >> $zshrc
printf "# Source Aliases\n" >> /Users/${USER}/.zshrc
printf "source ~/.aliases\n" >> /Users/${USER}/.zshrc
printf "\n" >> $zshrc
source ~/.zshrc
```

## Themes

Oh My Zsh has a great number of [themes](https://github.com/robbyrussell/oh-my-zsh/wiki/themes) to help you customize your terminal session. These are a few that I like, with "af-magic" serving as my current favorite.

* af-magic
* candy
* frontcube
* michelebologna
* wezm+

Enable af-magic via the following:

```bash
sed -i '.original' "s/robbyrussell/af-magic/g" /Users/${USER}/.zshrc
```
