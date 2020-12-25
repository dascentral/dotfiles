# PHP

## Managing PHP Versions

### PHP 8.0

* [PHP 8 Upgrade on Mac](https://stitcher.io/blog/php-8-upgrade-mac) — Includes how to handle Laravel Valet

### PHP 7.4

#### Installation

```bash
brew install php@7.4
```

#### PATH Issues

Following an upgrade to Mojave, I had some challenges getting PHP to work properly with [Laravel Valet](https://laravel.com/docs/master/valet). Homebrew was letting me know that PHP is "keg-only" so you have two force creation of symlinks to get it working properly.

```bash
brew link php@7.4 --force
```

Alternatively, if you do not need the symlinks, you can simply add the `bin` and `sbin` folders to your system path:

```bash
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
```

#### Uninstall

```bash
brew services stop php
brew unlink php@7.4
brew uninstall php@7.4
```

## PHP & Redis

The default database configuration within a [Laravel](https://laravel.com) application calls for use of the native Redis client within PHP. However, the default Homebrew version of PHP on a Mac does not enable the Redis client by default.

Instructions here are written for PHP 7.4 installed via Homebrew and derived from the following two resources:

* May 2018 — [Installing Homebrew PHP extensions with PECL](https://grrr.tech/posts/installing-homebrew-php-extensions-with-pecl/)
* August 2019 — [Installing PHPRedis with PECL/Homebrew](https://www.dwightwatson.com/posts/installing-phpredis-with-pecl-homebrew)

### Install via PECL

First up is installing the extension via PECL.

```bash
pecl install redis
```

### Confirm Installation

The following command should return a "redis" response.

```bash
php --modules | grep redis
```

### Directories

#### PECL extension directories

PECL extensions live here:

```bash
/usr/local/lib/php/pecl/<version>
```

Changing to the PHP 7.4 directory.

```bash
cd /usr/local/lib/php/pecl/20190902
```

#### PHP configurations

PHP configuration files live here:

```bash
/usr/local/etc/php
```

Opening the PHP 7.4 configuration file.

```bash
vi /usr/local/etc/php/7.4/php.ini
```

The PHP configuration file should include an `extension_dir` setting that enables PECL extensions.

```bash
extension_dir = "/usr/local/lib/php/pecl/<version>"
```

## Additional Resources

### Liftoff by Tighten

[Liftoff](https://github.com/tighten/liftoff) is a simple tool for setting up an ideal Laravel development environment on any machine. It will install PHP, Composer, the Laravel installer, and Takeout (for other dependencies like databases).