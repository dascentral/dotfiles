# Visual Studio Code

## Download

[https://code.visualstudio.com/](https://code.visualstudio.com/)

## Application Customizations

I store all settings and keyboard shortcuts in the cloud so that I can easily sync settings across computers. To link a new installation to those files, I execute the following commands:

```bash
cd ~/Library/Application\ Support/Code/User
rm settings.json
rm keybindings.json
rm -rf snippets
ln -s ~/GDrive/Documents/Software/VSCode/User/settings.json settings.json
ln -s ~/GDrive/Documents/Software/VSCode/User/keybindings.json keybindings.json
ln -s ~/GDrive/Documents/Software/VSCode/User/snippets snippets
```

### Storing Settings in the Cloud

If you want to mimic my approach, the following will put them in a folder of your choosing:

```bash
cd ~/Library/Application\ Support/Code/User
cp settings.json ~/path/of/your/choosing
cp keybindings.json ~/path/of/your/choosing
cp -r snippets ~/path/of/your/choosing
```

### Cloud vs. Git

I wrestled with where to store my settings since instinctually, it makes most sense to store them in this repository. However, I am likely to make edits directly within Code and when working on a project/respository separate from this one. Keeping them in the cloud means I don't have to worry about going back to commit changes.

If you want a look at my `settings.json` file, you can view it here: [https://drive.google.com/file/d/1Iy1KVKNW7x8fhzRNgwAA31pllxYtMd8o/view?usp=sharing](https://drive.google.com/file/d/1Iy1KVKNW7x8fhzRNgwAA31pllxYtMd8o/view?usp=sharing).

## Extensions

I leverage the following extensions:

* advanced-new-file
* Better PHPUnit
* Code Ace Jumper
* DotEnv
* ESLint
* File Utils
* GitLens
* Import Cost
* language-stylus
* Laravel Artisan
* Laravel Blade Snippets
* Markdown All in One
* markdownlint
* php cs fixer
* PHP Debug
* PHP Intelephense
* PHP Namespace Resolver
* [prettier-vscode](https://prettier.io/)
* snippet-creator
* Vetur

### Themes

I haven't quite settled on what I feel is best in the realm of themes but the following two are worth a look:

* Material Theme
* Slime Theme

### Others to Explore

I haven't installed these yet but they're on my radar.

* [Search Node Modules](https://marketplace.visualstudio.com/items?itemName=jasonnutter.search-node-modules) - Right now I've included `node_modules` within the Quick Open search scope. However, I may want to turn that back off.

## ESLint

ESLint will require installation of two Node.js modules:

```bash
npm install -g eslint
npm install -g eslint-plugin-vue
```

## Resources

* [Visual Studio Code for PHP Developers](https://laracasts.com/series/visual-studio-code-for-php-developers) - by Laracasts
* [VS Code Tips & Tricks](https://github.com/Microsoft/vscode-tips-and-tricks) - by Microsoft
