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

* [advanced-new-file](https://marketplace.visualstudio.com/items?itemName=patbenatar.advanced-new-file)
* [Better PHPUnit](https://marketplace.visualstudio.com/items?itemName=calebporzio.better-phpunit)
* [Code Ace Jumper](https://marketplace.visualstudio.com/items?itemName=lucax88x.codeacejumper)
* [DotEnv](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
* [EditorConfig for VS Code](https://marketplace.visualstudio.com/itemdetails?itemName=EditorConfig.EditorConfig)
* [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [File Utils](https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils)
* [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
* [Import Cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
* [language-stylus](https://marketplace.visualstudio.com/items?itemName=sysoev.language-stylus)
* [Laravel Artisan](https://marketplace.visualstudio.com/items?itemName=ryannaddy.laravel-artisan)
* [Laravel Blade Snippets](https://marketplace.visualstudio.com/items?itemName=onecentlin.laravel-blade)
* [Laravel 5 Snippets](https://marketplace.visualstudio.com/items?itemName=onecentlin.laravel5-snippets)
* [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
* [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
* [NGINX Configure](https://marketplace.visualstudio.com/items?itemName=william-voyek.vscode-nginx)
* [php cs fixer](https://marketplace.visualstudio.com/items?itemName=junstyle.php-cs-fixer)
* [PHP Debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)
* [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
* [PHP Namespace Resolver](https://marketplace.visualstudio.com/items?itemName=mehedidracula.php-namespace-resolver)
* [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [snippet-creator](https://marketplace.visualstudio.com/items?itemName=nikitakunevich.snippet-creator)
* [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
* [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur)

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

More to come on how I format my code. However, see resources below for many articles on how to set this up.

## Linting

Linting is enabled via a number of Node.js modules. The modules you want to install vary based upon the framework in use.

**Vue.js Projects**

* babel-eslint
* eslint
* eslint-config-airbnb-base
* eslint-config-prettier
* eslint-plugin-html
* eslint-plugin-import
* eslint-plugin-prettier
* eslint-plugin-vue
* prettier

**React Projects**

* babel-eslint
* eslint
* eslint-config-airbnb
* eslint-config-prettier
* eslint-plugin-html
* eslint-plugin-import
* eslint-plugin-jsx-a11y
* eslint-plugin-prettier
* eslint-plugin-react
* eslint-plugin-react-hooks
* prettier

**Other Projects**

* babel-eslint
* eslint
* eslint-config-airbnb-base
* eslint-config-prettier
* eslint-plugin-html
* eslint-plugin-import
* eslint-plugin-prettier
* prettier

## Resources

### Setup, Tips & Tricks

* [Visual Studio Code for PHP Developers](https://laracasts.com/series/visual-studio-code-for-php-developers) - by Laracasts
* [VS Code Tips & Tricks](https://github.com/Microsoft/vscode-tips-and-tricks) - by Microsoft

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