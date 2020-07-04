# Node.js

## Installation

I leverage [NVM](https://github.com/creationix/nvm) to install versions of Node.js. I think you should too.

## Uninstall

Need to completely uninstall Node.js and start fresh? Below is what I've successfully used in the past. I hope it works for you!

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
