# Laravel

## Introduction

The PHP Framework For Web Artisans. First there was sliced bread. Then there was Laravel.

[https://laravel.com/](https://laravel.com/)

## Enabling Local Development

At the moment, I'm using [Laravel Valet](https://laravel.com/docs/master/valet) to power local development. Eventually I'll move to a Docker-based solution but I selfishly enjoy the performance gains of native software installation. Basic steps to get up and running are as follows.

### Homebrew

Install Homebrew. Installation instructions can be found on the Homebrew website: [https://brew.sh/](https://brew.sh/).

### Install PHP

Install PHP. I currently use 7.2.

```bash
brew install php@7.2
brew link php@7.2 --force
```

The second command forces creation of symlinks for the PHP binaries within `/usr/local/bin`. This action ensures your Mac uses PHP 7.2 instead of the default version.

### Install Composer

[Composer](https://getcomposer.org/) is PHP's dependency manager.

```bash
php -r "readfile('http://getcomposer.org/installer');" | sudo php -- --install-dir=/usr/local/bin/ --filename=composer
sudo chown ${USER} ~/.composer
```

### Install MySQL

I use MySQL to store all application data. I currently install version 5.7.

```bash
brew install mysql@5.7
brew services start mysql@5.7
```

### Modify System Path

Following installation of all of this wonderful software, you will want to add a few directories to your system path so that binaries can be executed from anywhere on your machine.

I have added the following lines to the end of my `~/.zshrc` file. Make sure you replace `douglas.smith` with your own username.

```bash
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/Users/douglas.smith/.composer/vendor/bin"
export PATH="$PATH:/usr/local/opt/mysql@5.7/bin"
```

### Install Laravel Valet

Valet has an installation package which can be installed via Composer:

```bash
composer global require laravel/valet
```

Following its installation, you will want to run its installer:

```bash
valet install
```

Valet's default TLD is `.test`. I prefer to use `.localhost` which can be set via the following command:

```bash
valet tld localhost
```

Following installation, you can confirm Valet was installed correctly by pinging a local URL.

```bash
ping foobar.localhost
```

### Serving Sites

At this point, all software necessary to enable local development should be setup and configured properly. Once you are ready to start building your Laravel application, check out the Valet docs on serving sites.

[https://laravel.com/docs/master/valet#serving-sites](https://laravel.com/docs/master/valet#serving-sites)

## Application Creation

A new Laravel application can be created via the Laravel installer package which can be installed as a global Composer package:

```bash
composer global require laravel/installer
```

## Resources

### Testing

#### Courses

* [Test Driven Laravel](https://course.testdrivenlaravel.com/) - by Adam Wathan

#### Repositories

* [dczajkowski/auth-tests](https://github.com/dczajkowski/auth-tests) - Package that promotes validation of the full auth flows

#### Articles

* **May 2018** - [Testing Laravel authentication flow](https://medium.com/@DCzajkowski/testing-laravel-authentication-flow-573ea0a96318%0A) - Great walk through of the basics when testing auth. Led me to the [auth-tests](https://github.com/dczajkowski/auth-tests) repository mentioned above.