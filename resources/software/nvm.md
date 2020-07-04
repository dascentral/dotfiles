# Node Version Manager (NVM)

## Documentation

[https://github.com/creationix/nvm/](https://github.com/creationix/nvm/)

## Installation

This version tends to change frequently so it may be worth checking GitHub for the latest.

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.9/install.sh | bash
```

## Post-Installation

The following lines _should_ have been added to `~/.zshrc`

```bash
export NVM_DIR="/usr/local/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
```
