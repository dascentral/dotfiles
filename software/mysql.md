# MySQL

## Documentation

[https://www.mysql.com/](https://www.mysql.com/)

## Installation

These commands will install the latest version of MySQL.

```bash
brew install mysql
brew services start mysql
```

You can see available versions of MySQL via the following:

```bash
brew search mysql
```

### MySQL 5.7

MySQL 8.0 became prevelant in 2018. However, most of my projects are still using 5.7. If you want to install a specific version of MySQL, like 5.7, you can do so via the following:

```bash
brew install mysql@5.7
```

#### PATH issues with previous versions

On a few of my machines, I have accidentally upgraded to MySQL 8 via the `brew upgrade` command. After following the uninstall instructions below and then reinstalling MySQL 5.7, my system lost access to the `mysql` command via the command line.

After taking a closer look, the symbolic links that previously lived in `/usr/local/bin` were not recreated following the 5.7 installation process. I believe the best fix is to add the MySQL 5.7 `bin` folder to the system path. Make sure to use `/usr/local/opt` as the base of the path since that will gracefully accept any patch updates to the MySQL software. (e.g. Upgrading 5.7.22 to 5.7.23)

```bash
/usr/local/opt/mysql@5.7/bin
```

## Uninstall

I compiled these uninstall notes using the following two sources:

* [https://community.jaspersoft.com/wiki/uninstall-mysql-mac-os-x](https://community.jaspersoft.com/wiki/uninstall-mysql-mac-os-x)
* [https://gist.github.com/vitorbritto/0555879fe4414d18569d](https://gist.github.com/vitorbritto/0555879fe4414d18569d)

Note that these instructions will remove any data stored within existing MySQL installations. Ensure you backup any data that you wish to keep before removing the application.

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

### Launch Agents

This step may have already been handled via the Homebrew removal process however it doesn't hurt to run:

```bash
launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
```

### File System

For good measure, let's remove all potential references to MySQL from the file system:

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
