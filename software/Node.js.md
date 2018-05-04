# Node.js

## Installation

I leverage [NVM](https://github.com/creationix/nvm) to install versions of Node.js.

## Uninstall

In the past, I've had situations where I needed to clear my full system of Node.js and start from scratch. These commands seem to do the trick.

```bash
cd /usr/local/lib
sudo rm -rf node
sudo rm -rf node_modules

cd /usr/local/include
sudo rm -rf node
sudo rm -rf node_modules

cd /usr/local/bin
sudo rm node

brew uninstall node
```
