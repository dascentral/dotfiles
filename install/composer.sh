#!/usr/bin/env bash

# Confirm necessary software is installed
if [ ! -e "/usr/local/bin/composer" ]; then
    printf "\n\033[1;33mComposer has not been installed. Aborting installation.\n\n\033[0m"
    exit 0;
fi


#============================================================================
# Software installations
#============================================================================

# Composer Update
printf "\033[1;37mComposer self-update.\033[0m\n"
/usr/local/bin/composer self-update
printf "\n"


# Composer Global Require
app="consolidation/cgr"
name="Composer Global Require"
check="/Users/$USER/.composer/vendor/bin/cgr"
url="https://github.com/consolidation/cgr"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    composer global require $app
    printf "\n"
fi


# dascentral/hubflow-release
app="dascentral/hubflow-release"
name="dascentral/hubflow-release"
check="/Users/$USER/.composer/vendor/bin/hf"
url="https://packagist.org/packages/dascentral/hubflow-release"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    composer global require $app
    printf "\n"
fi


# laravel/installer
app="laravel/installer"
name="laravel/installer"
check="/Users/$USER/.composer/vendor/bin/laravel"
url="https://laravel.com/docs/master"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    composer global require $app
    printf "\n"
fi


# laravel/valet
app="laravel/valet"
name="laravel/valet"
check="/Users/$USER/.composer/vendor/bin/valet"
url="https://laravel.com/docs/master"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name - $url\033[0m\n"
    composer global require $app
    printf "\n"
fi


# PHP Code Sniffer
app="squizlabs/php_codesniffer=*"
name="PHP Code Sniffer"
check="/Users/$USER/.composer/vendor/squizlabs/php_codesniffer"
url="https://github.com/squizlabs/PHP_CodeSniffer"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    composer global require $app
    printf "\n"
fi


# PHP CS Fixer
app="friendsofphp/php-cs-fixer"
name="PHP CS Fixer"
check="/Users/$USER/.composer/vendor/friendsofphp/php-cs-fixer"
url="https://github.com/FriendsOfPHP/PHP-CS-Fixer"
if [ ! -e "$check" ]; then
    printf "\033[1;37mInstalling $name.\033[0m\n"
    composer global require $app
    printf "\n"
fi
