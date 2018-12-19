# PHP

## Documentation

[http://www.php.net/](http://www.php.net/)

## Installation

### PHP 7.2

```bash
brew install php@7.2
```

#### PATH issues on Mojave

Following an upgrade to Mojave, it appears as though the PHP 7.2 path needs to be explicitly added to the global system path for the new version to take effect.

```bash
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
```
