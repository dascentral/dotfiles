# MySQL

## Documentation

[https://www.mysql.com/](https://www.mysql.com/)

## Installation

These commands will install the latest version of MySQL.

```bash
brew install mysql@5.7
brew services start mysql@5.7
```

### Versioning

Note that MySQL 8.0 became prevelant in 2018. However, most of my projects are still using 5.7 which is why my default software installation specifies that version.

You can see available versions of MySQL via the following:

```bash
brew search mysql
```

### PATH Issues

Recently, I noticed that symlinks were not being created automatically following new installs of MySQL 5.7. You can force creation of those symlinks via the following:

```bash
brew link mysql@5.7 --force
```

Alternatively, if you do not need the symlinks, you can add the following folder to your system path:

```bash
/usr/local/opt/mysql@5.7/bin
```

## Uninstall

I compiled these uninstall notes using the following two sources:

* [https://community.jaspersoft.com/wiki/uninstall-mysql-mac-os-x](https://community.jaspersoft.com/wiki/uninstall-mysql-mac-os-x)
* [https://gist.github.com/vitorbritto/0555879fe4414d18569d](https://gist.github.com/vitorbritto/0555879fe4414d18569d)

Note that these instructions will remove any data stored within existing MySQL installations. Ensure you backup any data that you wish to keep before removing the application.

These instructions also assume you'll be uninstalling MySQL 5.7.

### MySQL Services

You will first want to stop the MySQL service. If using Homebrew, this can be done via the following:

```bash
brew services stop mysql@5.7
```

Use the following command to confirm whether any MySQL processes remain:

```bash
ps aux | grep mysql
```

Kill any processes that remain.

### Homebrew

If installed via Homebrew, this should remove the bulk of the application:

```bash
brew remove mysql@5.7
brew cleanup
```

### File System

This command will remove all MySQL data from the file system:

```bash
sudo rm -rf /usr/local/var/mysql
```

### Wrap Up

Cleanup any zombie Homebrew processes via this command:

```bash
brew services cleanup
```

### Reboot

Hopefully the last step in the process.

## Legacy Cleanup Commands

I've moved on to macOS Mojave. Since then, the following commands seem irrelevant but I'll keep them around for posterity.

```bash
launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
sudo rm -rf /usr/local/mysql*
sudo rm ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
sudo rm -rf /Library/StartupItems/MySQLCOM
sudo rm -rf /Library/PreferencePanes/My*
sudo rm -rf ~/Library/PreferencePanes/My*
sudo rm -rf /Library/Receipts/mysql*
sudo rm -rf /Library/Receipts/MySQL*
sudo rm -rf /private/var/db/receipts/*mysql*
```

#### MySQL Configuration

I have never had to execute this step but every reference I found online indicated it was necessary. I'm keeping it around in case I run across it in the future.

Edit `/etc/hostconfig` and remove the following line:

```bash
MYSQLCOM=-YES-
```

