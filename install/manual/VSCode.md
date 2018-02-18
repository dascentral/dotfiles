# Visual Studio Code

## Download

[https://code.visualstudio.com/](https://code.visualstudio.com/)

## Application Customizations

I store all settings and keyboard shortcuts in the cloud so that I can sync settings across computers. To link an installation to those files, I execute the following commands:

```bash
cd ~/Library/Application\ Support/Code/User
rm settings.json
rm keybindings.json
ln -s ~/GDrive/Documents/Software/VSCode/settings/keybindings.json keybindings.json
ln -s ~/GDrive/Documents/Software/VSCode/settings/settings.json settings.json
```

### Storing Settings in the Cloud

If you want to mimic my approach, the following will put them in a folder of your choosing:

```bash
cd ~/Library/Application\ Support/Code/User
cp settings.json ~/path/of/your/choosing
cp keybindings.json ~/path/of/your/choosing
```

## Extensions

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
