# Nginx

## Documentation

[http://www.php.net/](http://www.php.net/)

## Installation

Right now, I'm installing Nginx locally via [Lavael Valet](https://laravel.com/docs/master/valet). Best to follow those instructions.

## Uninstall

At this time, I cannot contend this is the "right" or comprehensive way of uninstalling Nginx but they serve as my personal notes.

### Laravel Valet

If you installed Nginx via Laravel Valet and you want to uninstall Nginx, you probably should just uninstall Laravel Valet.

```bash
valet stop
valet uninstall
```

### Homebrew

In the past, I have also installed Nginx via Homebrew. That requires a few steps.

#### Stop Nginx

```bash
brew services stop nginx
```

#### Clear Content

The following files and folders can be removed. They are either logs that can be lost without much consternation or they are files that would be reinstalled via Homebrew.

```bash
rm -rf /usr/local/Cellar/nginx
rm -rf /usr/local/var/log/nginx
rm -rf /usr/local/var/run/nginx
rm -rf /var/log/nginx
```
