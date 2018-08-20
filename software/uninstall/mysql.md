# MySQL Uninstall Guide

## Introduction

Instructions below are geared towards uninstall of MySQL on macOS machines. I compiled these notes using the following two sources:

* [https://community.jaspersoft.com/wiki/uninstall-mysql-mac-os-x](https://community.jaspersoft.com/wiki/uninstall-mysql-mac-os-x)
* [https://gist.github.com/vitorbritto/0555879fe4414d18569d](https://gist.github.com/vitorbritto/0555879fe4414d18569d)

Note that these instructions will remove any data stored within existing MySQL installations. Ensure you backup any data that you wish to keep before removing the application.

## Instructions

### MySQL Services

You will first want to stop the MySQL service. If using Homebrew, this can be done via the following:

```bash
brew services stop mysql
```

Use the following command to confirm whether any MySQL processes remain:

```bash
ps aux | grep mysql
```

Kill any processes that remain.

### Homebrew

If installed via Homebrew, this should remove the bulk of the application:

```bash
brew remove mysql
brew cleanup
```

### Launch Agents

This step may have already been handled via the Homebrew removal process however it doesn't hurt to run:

```bash
launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
```

### File System

For good measure, let's remove all references to MySQL from the file system:

```bash
sudo rm -rf /usr/local/mysql*
sudo rm -rf /usr/local/var/mysql
sudo rm ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
sudo rm -rf /Library/StartupItems/MySQLCOM
sudo rm -rf /Library/PreferencePanes/My*
sudo rm -rf ~/Library/PreferencePanes/My*
sudo rm -rf /Library/Receipts/mysql*
sudo rm -rf /Library/Receipts/MySQL*
sudo rm -rf /private/var/db/receipts/*mysql*
```

### MySQL Configuration

I've never actually had to execute this step but every reference I found online indicated it was necessary. I'm keeping it around in case I run across it in the future.

Edit `/etc/hostconfig` and remove the following line:

```bash
MYSQLCOM=-YES-
```

### Wrap Up

Cleanup any zombie Homebrew processes via this command:

```bash
brew services cleanup
```

### Reboot

Hopefully the last step in the process.