# Nginx

## Resources

* [Migrate from Apache to Nginx](https://www.digitalocean.com/community/articles/how-to-migrate-from-an-apache-web-server-to-nginx-on-an-ubuntu-vps)
* [Enabling Basic Auth](https://www.digitalocean.com/community/tutorials/how-to-set-up-password-authentication-with-nginx-on-ubuntu-14-04)

## Installation

### Laravel Valet

I currently run [Laravel Valet](https://laravel.com/docs/master/valet) on my local machine. It's installation process takes care of adding Nginx.

### Homebrew

If you are not in need of Laravel Valet, Homebrew can be used instead:

```bash
brew install nginx
```

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

The following command will kill any zombie processes:

```bash
sudo kill $(ps aux | grep '[n]ginx' | awk '{print $2}')
```

#### Clear Content

The following files and folders can be removed. They are either logs that can be lost without much consternation or they are files that would be reinstalled via Homebrew.

```bash
brew remove nginx
sudo rm -rf /usr/local/Cellar/nginx
sudo rm -rf /usr/local/etc/nginx
sudo rm -rf /usr/local/var/log/nginx
sudo rm -rf /usr/local/var/run/nginx
sudo rm -rf /var/log/nginx
```

### LaunchDaemons & LaunchAgents

Doesn't hurt to check the following locations for Nginx references:

```bash
/Library/LaunchDaemons/
/Library/LaunchAgents/
```
