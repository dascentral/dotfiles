# Oh My Zsh

## Installation

[https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Set your theme

Oh My Zsh has a great number of [themes](https://github.com/robbyrussell/oh-my-zsh/wiki/themes) to help you customize your terminal session. These are a few that I like, with "af-magic" serving as my current favorite.

* af-magic
* candy
* frontcube
* michelebologna
* wezm+

#### Enabling af-magic

```bash
sed -i '.original' "s/robbyrussell/af-magic/g" /Users/${USER}/.zshrc
```
