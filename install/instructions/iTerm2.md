# iTerm2

## Installation

[Download](https://www.iterm2.com/downloads.html) and install iTerm2.

## Install Oh My Zsh

[Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) is a framework for managing your zsh configuration. Let's get that up and running.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Set the theme

```bash
sed -i '.original' "s/robbyrussell/af-magic/g" /Users/${USER}/.zshrc
```

### Add a reference to aliases

```bash
printf "\n" >> $zshrc
printf "# Source Aliases\n" >> /Users/${USER}/.zshrc
printf "source ~/.aliases\n" >> /Users/${USER}/.zshrc
printf "\n" >> $zshrc
```

### Specify the preferences directory

```bash
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Dropbox/DAS/Software/iTerm2"
```

### Tell iTerm2 to use the custom preferences in the directory

```bash
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```

## References

* [https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [https://github.com/robbyrussell/oh-my-zsh/wiki/themes](https://github.com/robbyrussell/oh-my-zsh/wiki/themes)
