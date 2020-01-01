# Visual Studio Code

## Introduction

[https://code.visualstudio.com/](https://code.visualstudio.com/)

> Visual Studio Code is a source-code editor developed by Microsoft for Windows, Linux and macOS. It includes support for debugging, embedded Git control and GitHub, syntax highlighting, intelligent code completion, snippets, and code refactoring.

Source: [Wikipedia](https://en.wikipedia.org/wiki/Visual_Studio_Code)

## Resources

### Setup, Tips & Tricks

* [Visual Studio Code for PHP Developers](https://laracasts.com/series/visual-studio-code-for-php-developers) - by Laracasts
* [VS Code Tips & Tricks](https://github.com/Microsoft/vscode-docs/blob/master/docs/getstarted/tips-and-tricks.md) - by Microsoft

### Code Formatting + Linting

This topic seems to be wildly complex. The following articles outline a number of different approaches.

* March 2019 - [ESLint + Prettier + VS Code - The Perfect Setup](https://www.youtube.com/watch?v=lHAeK8t94as) - YouTube video by Wes Bos
* March 2019 - [Write beautiful and consistent JavaScript code using ESLint, Prettier and VSCode](https://hackernoon.com/write-beautiful-and-consistent-javascript-code-using-eslint-prettier-and-vscode-760837fdef89)
* Dec 2018 - [How to properly set up Nuxt with ESLint and Prettier in VSCode](https://medium.com/@gogl.alex/how-to-properly-set-up-eslint-with-prettier-for-vue-or-nuxt-in-vscode-e42532099a9c)
* Oct 2018 - [Setting up Prettier on VS Code](https://travishorn.com/setting-up-prettier-on-vs-code-1fd5e5a43523)
* June 2018 - [Integrating Prettier + ESLint + Airbnb Style Guide in VSCode](https://blog.echobind.com/integrating-prettier-eslint-airbnb-style-guide-in-vscode-47f07b5d7d6a)

### JavaScript Linting

* Dec 2017 - [Setting up ESLint on VS Code with Airbnb JavaScript Style Guide](https://travishorn.com/setting-up-eslint-on-vs-code-with-airbnb-javascript-style-guide-6eb78a535ba6)

### Managing Settings

* [VS Code Documentation](https://vscode.readthedocs.io/en/latest/getstarted/settings/) - Settings aren't rocket science but understanding how they work is important.

### Debugging PHP

* **Article:** Oct 2017 - [Debugging: Configure VS Code + XDebug + PHPUnit](https://tighten.co/blog/configure-vscode-to-debug-phpunit-tests-with-xdebug)

## Settings Synchronization

I use Visual Studio Code across multiple computers, and I want to make sure the setup is consistent across each one.

I store user settings, key bindings, and code snippets within this repository and then modify each installation to reference the cloned repository location.

When setting up a new system, the following will remove the default, local settings and link my Visual Studio Code installation to the settings within this repository.

```bash
cd ~/Library/Application\ Support/Code/User
rm settings.json
rm keybindings.json
rm -rf snippets
ln -s ~/dotfiles/settings/VSCode/User/settings.json settings.json
ln -s ~/dotfiles/settings/VSCode/User/keybindings.json keybindings.json
ln -s ~/dotfiles/settings/VSCode/User/snippets snippets
```

## Extensions

### All purpose

* [advanced-new-file](https://marketplace.visualstudio.com/items?itemName=patbenatar.advanced-new-file)
* [Code Ace Jumper](https://marketplace.visualstudio.com/items?itemName=lucax88x.codeacejumper)
* [DotEnv](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
* [File Utils](https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils)
* [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
* [snippet-creator](https://marketplace.visualstudio.com/items?itemName=nikitakunevich.snippet-creator)

### Docker

* [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)

### Laravel

* [Laravel Artisan](https://marketplace.visualstudio.com/items?itemName=ryannaddy.laravel-artisan)
* [Laravel Blade Snippets](https://marketplace.visualstudio.com/items?itemName=onecentlin.laravel-blade)

### Markdown

* [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
* [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

### PHP

* [Better PHPUnit](https://marketplace.visualstudio.com/items?itemName=calebporzio.better-phpunit)
* [php cs fixer](https://marketplace.visualstudio.com/items?itemName=junstyle.php-cs-fixer)
* [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
* [PHP Namespace Resolver](https://marketplace.visualstudio.com/items?itemName=mehedidracula.php-namespace-resolver)

### Web essentials

* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [Import Cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
* [language-stylus](https://marketplace.visualstudio.com/items?itemName=sysoev.language-stylus)
* [NGINX Configure](https://marketplace.visualstudio.com/items?itemName=william-voyek.vscode-nginx)
* [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
* [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur)

### Exploratory

I have not yet installed these extensions (or they are disabled) but I feel they are worth tracking:

* [EditorConfig for VS Code](https://marketplace.visualstudio.com/itemdetails?itemName=EditorConfig.EditorConfig)
* [Laravel 5 Snippets](https://marketplace.visualstudio.com/items?itemName=onecentlin.laravel5-snippets)
* [PHP Constructor](https://marketplace.visualstudio.com/items?itemName=MehediDracula.php-constructor)
* [PHP Debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)
* [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

## Themes

I haven't quite settled on what I feel is best in the realm of themes but the following two are worth a look:

* Material Theme
* Slime Theme

I currently have the Slime theme enabled. `Command-K + Command-T` will pop the theme selection window.

## Code Formatting

### Philosophy

> The ratio of time spent reading (code) versus writing is well over 10 to 1... (therefore) making it easy to read makes it easier to write.
> 
> -Bob Martin, Clean Code

### Extensions

From the list above, the following items promote formatting of code:

* [EditorConfig for VS Code](https://marketplace.visualstudio.com/itemdetails?itemName=EditorConfig.EditorConfig)
* [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [php cs fixer](https://marketplace.visualstudio.com/items?itemName=junstyle.php-cs-fixer)

More to come on how I format my code. However, see resources below for many articles on how to set this up.
