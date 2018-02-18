# Visual Studio Code

## Download
[https://code.visualstudio.com/](https://code.visualstudio.com/)


## Settings Synchronization

### Storing Settings in the Cloud
I like to store my settings in the cloud so that I can sync them across computers.

```
cd ~/Library/Application\ Support/Code/User
cp settings.json ~/GDrive/Documents/Software/VSCode/settings
cp keybindings.json ~/GDrive/Documents/Software/VSCode/settings
```

### Leveraging Cloud Settings
```
cd ~/Library/Application\ Support/Code/User
rm settings.json
rm keybindings.json
ln -s ~/GDrive/Documents/Software/VSCode/settings/keybindings.json keybindings.json
ln -s ~/GDrive/Documents/Software/VSCode/settings/settings.json settings.json
```


## Application Customizations

### Extensions
I leverage the following extensions:

* advanced-new-file
* Better PHPUnit
* DotEnv
* File Utils
* Laravel Artisan
* Material Theme
* PHP Intelephense
* Slime Theme
* snippet-creator
* Sublime Text Keymap
