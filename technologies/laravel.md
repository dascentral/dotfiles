# Laravel

## Introduction

[Laravel](http://laravel.com/) is a free, open-source PHP web framework, created by [Taylor Otwell](https://twitter.com/taylorotwell) and intended for the development of web applications following the model–view–controller (MVC) architectural pattern. I first discovered the framework in 2014 and immediately fell in love with its power and simplicity. It quickly became a key component within my preferred tech stack for any web development project.

Below I have attempted to inventory the various resources that I find relevent to my professional or personal work related to Laravel.

## Authentication

[Laravel Docs](https://laravel.com/docs/master/authentication)

### Articles

* [Laravel Middleware & Basic Auth](https://medium.com/oceanize-geeks/laravel-middleware-basic-auth-implementation-88b777361b5c) - **Jan 2018**


## Cloud Deployments

[Laravel Forge](https://forge.laravel.com/) is a service that developers can use to "provision and deploy unlimited PHP applications on DigitalOcean, Linode, AWS, and more." While I appreciate the utility and simplicity of that service, my deployments require a more complex cloud hosting setup.

### Kubernetes

#### Articles

* [Deploying a Laravel App in Kubernetes on Google Cloud](https://pusher.com/tutorials/laravel-kubernetes-google-cloud?ref=laravelnews)

## Flash Messaging

Laravel provides an ability to store items in the session only for the next request. So this feature technically falls under Lararvel's "Session" component.

[Laravel Docs](https://laravel.com/docs/master/session#flash-data)

### Packages

* [laracasts/flash](https://github.com/laracasts/flash) - The OG flash messaging package for Laravel applications
* [spatie/laravel-flash](https://murze.be/a-laravel-package-to-flash-messages) - Lightweight package for flash messaging.

## Testing

[Laravel Docs](https://laravel.com/docs/master/testing)

### Courses

* [Test Driven Laravel](https://course.testdrivenlaravel.com/) - Online course by Adam Wathan

### Articles

* [Testing Laravel Authentication](https://medium.com/@DCzajkowski/testing-laravel-authentication-flow-573ea0a96318%0A) - **May 2018** - Great walk through of the basics when testing auth.

### Packages

* [dczajkowski/auth-tests](https://github.com/dczajkowski/auth-tests) - Package that promotes validation of the full auth flows
