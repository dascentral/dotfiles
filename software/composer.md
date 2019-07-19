# Composer

## Introduction

Composer is a tool for dependency management in PHP. It allows you to declare the libraries your project depends on and it will manage them for you.

[https://getcomposer.org/download/](https://getcomposer.org/download/)

## Installation

Following installation of [PHP](../software/php.md), composer can be installed via the following:

```bash
php -r "readfile('http://getcomposer.org/installer');" | sudo php -- --install-dir=/usr/local/bin/ --filename=composer
sudo chown ${USER} ~/.composer
```

## Configuration

You will likely want to make sure that Composer's `bin` directory is in your system's PATH.

```bash
export PATH=$PATH:~/.composer/vendor/bin
```
