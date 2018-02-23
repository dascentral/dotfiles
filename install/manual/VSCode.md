# Visual Studio Code

## Download

[https://code.visualstudio.com/](https://code.visualstudio.com/)

## Application Customizations

I store all settings and keyboard shortcuts in the cloud so that I can easily sync settings across computers. To link a new installation to those files, I execute the following commands:

```bash
cd ~/Library/Application\ Support/Code/User
rm settings.json
ln -s ~/GDrive/Documents/Software/VSCode/settings/settings.json settings.json
rm keybindings.json
ln -s ~/GDrive/Documents/Software/VSCode/settings/keybindings.json keybindings.json
```

### Storing Settings in the Cloud

If you want to mimic my approach, the following will put them in a folder of your choosing:

```bash
cd ~/Library/Application\ Support/Code/User
cp settings.json ~/path/of/your/choosing
cp keybindings.json ~/path/of/your/choosing
```

### Cloud vs. Git

I wreslted with where to store my settings since instinctually, it makes most sense to store them in this repository. However, I am likely to make edits directly within Code and when working on a project/respository separate from this one. Keeping them in the cloud means I don't have to worry about going back to commit changes.

If you want a look at my `settings.json` file, you can view it here: [https://drive.google.com/file/d/1Iy1KVKNW7x8fhzRNgwAA31pllxYtMd8o/view?usp=sharing](https://drive.google.com/file/d/1Iy1KVKNW7x8fhzRNgwAA31pllxYtMd8o/view?usp=sharing).

## Extensions

I leverage the following extensions:

* advanced-new-file
* Better PHPUnit
* DotEnv
* ESLint
* File Utils
* Import Cost
* Laravel Artisan
* markdownlint
* Markdown All in One
* PHP Debug
* PHP Intelephense
* php-cs-fixer
* snippet-creator
* Sublime Text Keymap
* Vetur

### Themes

I haven't quite settled on what I feel is best in the realm of themes but the following two are worth a look:

* Material Theme
* Slime Theme

## Resources

* [Visual Studio Code for PHP Developers](https://laracasts.com/series/visual-studio-code-for-php-developers) - by Laracasts
* [VS Code Tips & Tricks](https://github.com/Microsoft/vscode-tips-and-tricks) - by Microsoft
