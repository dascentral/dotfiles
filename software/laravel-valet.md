# Laravel Valet

## Introduction

Valet is a Laravel development environment for Mac minimalists. It configures your Mac to always run Nginx in the background when your machine starts. Then, using DnsMasq, Valet proxies all requests to point to sites installed on your local machine.

[https://laravel.com/docs/master/valet](https://laravel.com/docs/master/valet)

## Installation

Assuming [Homebrew](homebrew.md), [PHP](php.md), and [Composer](composer.md) have been installed, you can run the following:

```bash
brew update
composer global require laravel/valet
valet install
```

The [Laravel docs](https://laravel.com/docs/master/valet#installation) will give you much more detail on the installation process.

## Configuration

### Top-Level Domain

The default TLD for Valet websites is `.test` however, I prefer use of `.localhost`. That can be quickly configured via the following command:

```bash
valet tld localhost
```

### Parking the Workspace

I keep all of my web projects within a `~/Workspace` folder. I like to park that folder for quick serving of my Laravel websites.

```bash
cd ~/Workspace
valet park
```

That command will register the `~/Workspace` folder as a path that Valet should search for sites.

## Upgrade PHP

Assuming PHP Has been installed via [Homebrew](https://brew.sh/), there may be challenges when upgrading PHP. The following steps, courtesy of [Jeffrey Way](https://twitter.com/jeffrey_way), should help resolve any issues.

1. Update global Composer dependencies - `composer global update`
2. Reinstall Valet - `valet install`
3. Make sure Valet is using PHP 7.4 - `valet use php@7.4`
4. If still failing, upgrade nginx/dnsmasq - `brew upgrade nginx && brew upgrade dnsmasq`
5. Make sure Brew isn't linked to an older version of PHP - `brew unlink php@7.2`

## Troubeshooting

On occassion, more often after I've upgraded macOS, Valet runs into issues. I find it easier to fix by uninstalling the full system and reinstalling.

The commands below should help get you there.

### Stop Relevant Services

```bash
brew services stop nginx
brew services stop dnsmasq
brew services cleanup
```

You can confirm servcies are stopped via:

```bash
brew services list
```

### Uninstall Valet

```bash
valet stop
valet uninstall
```

### Remove from filesystem

```bash
cd /Users/${USER} && rm -rf .valet
cd /Users/${USER}/.config && rm -rf valet
```

## Resources

* [Adam Watham Troubleshooting Guide](https://gist.github.com/adamwathan/6ea40e90a804ea2b3f9f24146d86ad7f)
