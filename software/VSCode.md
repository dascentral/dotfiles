# Visual Studio Code

## Introduction

[https://code.visualstudio.com/](https://code.visualstudio.com/)

> Visual Studio Code is a source-code editor developed by Microsoft for Windows, Linux and macOS. It includes support for debugging, embedded Git control and GitHub, syntax highlighting, intelligent code completion, snippets, and code refactoring.

Source: [Wikipedia](https://en.wikipedia.org/wiki/Visual_Studio_Code)

## Setup, Tips & Tricks

You have an infinite number of ways to customize VS Code. My setup was heavily influenced (or perhaps directly mirrors) the advice from these resources.

* [Visual Studio Code for PHP Developers](https://laracasts.com/series/visual-studio-code-for-php-developers) - by Laracasts
* [My VS Code Setup](https://calebporzio.com/my-vs-code-setup-2) - by Caleb Porzio - Dec 2017
* [The best setting.json for PHP development with Visual Studio Code](https://dev.to/ryanmccullagh/the-best-setting-json-for-php-development-with-visual-studio-code-4agc) - Dec 2019
* [20 VS Code Shortcuts for Faster Coding](https://medium.com/better-programming/20-vs-code-shortcuts-for-fast-coding-cheatsheet-10b0e72fd5d) - Nov 2019

## Extensions

Note that any extension below can be installed via the command line:

```bash
code --install-extension [publisher.extension]
```

### All purpose

* [advanced-new-file](https://marketplace.visualstudio.com/items?itemName=patbenatar.advanced-new-file)
* [Code Ace Jumper](https://marketplace.visualstudio.com/items?itemName=lucax88x.codeacejumper)
* [DotEnv](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
* [File Utils](https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils)
* [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
* [snippet-creator](https://marketplace.visualstudio.com/items?itemName=nikitakunevich.snippet-creator)
* [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons) - Icons for Visual Studio Code

### Docker

* [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)

### Laravel

* [Laravel Artisan](https://marketplace.visualstudio.com/items?itemName=ryannaddy.laravel-artisan)
* [Laravel Blade Snippets](https://marketplace.visualstudio.com/items?itemName=onecentlin.laravel-blade)

### Markdown

* [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
* [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

### PHP

* [Better PHPUnit](https://marketplace.visualstudio.com/items?itemName=calebporzio.better-phpunit) - PHPUnit runner for VS Code
* [php cs fixer](https://marketplace.visualstudio.com/items?itemName=junstyle.php-cs-fixer) - Automatically fix PHP Coding Standards issues
* [PHP DocBlocker](https://marketplace.visualstudio.com/items?itemName=neilbrayfield.php-docblocker) - A simple, dependency free PHP specific DocBlocking package
* [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client) - The best PHP IntelliSense package for VS Code
* [PHP Namespace Resolver](https://marketplace.visualstudio.com/items?itemName=mehedidracula.php-namespace-resolver) - Import and expand PHP namespaces

### Web essentials

* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [Import Cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
* [language-stylus](https://marketplace.visualstudio.com/items?itemName=sysoev.language-stylus)
* [NGINX Configure](https://marketplace.visualstudio.com/items?itemName=william-voyek.vscode-nginx)
* [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
* [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur)

### Themes

* [Material Theme](https://marketplace.visualstudio.com/items?itemName=Equinusocio.vsc-material-theme)
* [Nord](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code) - My current favorite
* [Slime](https://marketplace.visualstudio.com/items?itemName=smlombardi.slime)

### Exploratory

I have not yet installed these extensions (or they are disabled) but I feel they are worth tracking:

* [EditorConfig for VS Code](https://marketplace.visualstudio.com/itemdetails?itemName=EditorConfig.EditorConfig)
* [Laravel 5 Snippets](https://marketplace.visualstudio.com/items?itemName=onecentlin.laravel5-snippets)
* [PHP Constructor](https://marketplace.visualstudio.com/items?itemName=MehediDracula.php-constructor)
* [PHP Debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)
* [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [SCSS Intellisense](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-scss)

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

## Code Formatting + Linting

> The ratio of time spent reading (code) versus writing is well over 10 to 1... (therefore) making it easy to read makes it easier to write.
> 
> -Bob Martin, Clean Code

For a very long time, I struggled to find a formatting and linting setup that I felt made sense or that worked effectively. I'm about 90% there right now although I have not yet taken the time to document my setup. More to come on that.

### Resources

The following articles have helped me on my journey towards understanding:

* Aug 2019 - [Set up ESlint, Prettier & EditorConfig without conflicts](https://blog.theodo.com/2019/08/empower-your-dev-environment-with-eslint-prettier-and-editorconfig-with-no-conflicts/)
* Aug 2019 - [Why You Should Use ESLint, Prettier & EditorConfig](https://blog.theodo.com/2019/08/why-you-should-use-eslint-prettier-and-editorconfig-together/)
* March 2019 - [ESLint + Prettier + VS Code - The Perfect Setup](https://www.youtube.com/watch?v=lHAeK8t94as) - YouTube video by Wes Bos
* March 2019 - [Write beautiful and consistent JavaScript code using ESLint, Prettier and VSCode](https://hackernoon.com/write-beautiful-and-consistent-javascript-code-using-eslint-prettier-and-vscode-760837fdef89)
* Dec 2018 - [How to properly set up Nuxt with ESLint and Prettier in VSCode](https://medium.com/@gogl.alex/how-to-properly-set-up-eslint-with-prettier-for-vue-or-nuxt-in-vscode-e42532099a9c)
* Oct 2018 - [Setting up Prettier on VS Code](https://travishorn.com/setting-up-prettier-on-vs-code-1fd5e5a43523)
* June 2018 - [Integrating Prettier + ESLint + Airbnb Style Guide in VSCode](https://blog.echobind.com/integrating-prettier-eslint-airbnb-style-guide-in-vscode-47f07b5d7d6a)
* Dec 2017 - [Setting up ESLint on VS Code with Airbnb JavaScript Style Guide](https://travishorn.com/setting-up-eslint-on-vs-code-with-airbnb-javascript-style-guide-6eb78a535ba6)

## Debugging

* **Article:** Oct 2017 - [Debugging: Configure VS Code + XDebug + PHPUnit](https://tighten.co/blog/configure-vscode-to-debug-phpunit-tests-with-xdebug)

## VS Code Docs

I have found the following sections of the official documentation worth reviewing.

* [Managing Settings](https://vscode.readthedocs.io/en/latest/getstarted/settings/) - Settings aren't rocket science but understanding how they work is important.

## Troubleshooting

### Terminal + Node.js + NVM

I use [NVM](https://github.com/creationix/nvm/) to manage local versions of Node.js. As a resultl, I was (until just recently) receiving the following error message within my VS Code terminal whenever it would boot up.

```bash
nvm is not compatible with the npm config "prefix" option: currently set to "/usr/local"
Run `npm config delete prefix` or `nvm use --delete-prefix vX.X.X --silent` to unset it
```

Microsoft's [documentation for the integrated terminal](https://github.com/Microsoft/vscode-docs/blob/master/docs/editor/integrated-terminal.md#why-is-nvm-complaining-about-a-prefix-option-when-the-integrated-terminal-is-launched) provided the fix. Feel free to read the full details there but the shorthand is here.

From within the VS Code terminal, identify the current location of `npm` by issuing a `which npm` command. Since I likely installed `npm` globally before installing NVM, mine was found within `/usr/local/bin`.

Use that path to identify the path to the old `node_modules` folder.

```bash
ls -la /usr/local/bin | grep "np[mx]"
```

From there, removing the files and relaunching the VS Code terminal should fix the issue:

```bash
rm -R /usr/local/bin/npm /usr/local/lib/node_modules/npm/bin/npm-cli.js
rm -R /usr/local/bin/npx /usr/local/lib/node_modules/npm/bin/npx-cli.js
```
