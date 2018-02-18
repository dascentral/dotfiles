# Visual Studio Code

## Download

[https://code.visualstudio.com/](https://code.visualstudio.com/)

## Settings Synchronization

### Storing Settings in the Cloud

I like to store my settings in the cloud so that I can sync them across computers.

```bash
cd ~/Library/Application\ Support/Code/User
cp settings.json ~/GDrive/Documents/Software/VSCode/settings
cp keybindings.json ~/GDrive/Documents/Software/VSCode/settings
```

### Leveraging Cloud Settings

The following commands will replace local settings with those found in the cloud:

```bash
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
* markdownlint
* Markdown All in One
* Material Theme
* PHP Intelephense
* php-cs-fixer
* Slime Theme
* snippet-creator
* Sublime Text Keymap

## Resources

* [Visual Studio Code for PHP Developers](https://laracasts.com/series/visual-studio-code-for-php-developers) - by Laracasts
* [VS Code Tips & Tricks](https://github.com/Microsoft/vscode-tips-and-tricks) - by Microsoft
