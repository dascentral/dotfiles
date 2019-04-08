# Laravel

## Introduction

[Laravel](http://laravel.com/) is a free, open-source PHP web framework, created by [Taylor Otwell](https://twitter.com/taylorotwell) and intended for the development of web applications following the model–view–controller (MVC) architectural pattern. I first discovered the framework in 2014 and immediately fell in love with its power and simplicity. It quickly became a key component within my preferred tech stack for any web development project.

Below I have attempted to inventory the various resources that I find relevent to my professional or personal work related to Laravel.

## Authentication

* **Laravel Docs:** [https://laravel.com/docs/master/authentication](https://laravel.com/docs/master/authentication)
* **Article:** Jan 2018 - [Laravel Middleware & Basic Auth](https://medium.com/oceanize-geeks/laravel-middleware-basic-auth-implementation-88b777361b5c) - I needed this for work. I'd avoid Basic Auth if at all possible.


## Cloud Deployments

[Laravel Forge](https://forge.laravel.com/) is a service that developers can use to "provision and deploy unlimited PHP applications on DigitalOcean, Linode, AWS, and more." While I appreciate the utility and simplicity of that service, my deployments require a more complex cloud hosting setup.

* **Article:** March 2019 - [Deploying a Laravel App in Kubernetes on Google Cloud](https://pusher.com/tutorials/laravel-kubernetes-google-cloud?ref=laravelnews)

## Flash Messaging

Laravel provides an ability to store items in the session only for the next request. So this feature technically falls under Lararvel's "Session" component.

* **Laravel Docs:** [https://laravel.com/docs/master/session#flash-data](https://laravel.com/docs/master/session#flash-data)
* **Package:** [laracasts/flash](https://github.com/laracasts/flash) - The OG flash messaging package for Laravel applications
* **Package:** [spatie/laravel-flash](https://murze.be/a-laravel-package-to-flash-messages) - Lightweight package for flash messaging.

## GraphQL

* **Article:** March 2019 - [Developing and Securing GraphQL APIs with Laravel](https://auth0.com/blog/developing-and-securing-graphql-apis-with-laravel)

## Routing

* **Article:** April 2018 - [Laravel Route Tips to Improve Your Routing](https://laravel-news.com/laravel-route-tips-to-improve-your-routing)

## Testing

* **Laravel Docs:** [https://laravel.com/docs/master/testing](https://laravel.com/docs/master/testing)
* **Course:** [Test Driven Laravel](https://course.testdrivenlaravel.com/) - Online course by Adam Wathan
* **Package:** [dczajkowski/auth-tests](https://github.com/dczajkowski/auth-tests) - Package that promotes validation of the full auth flows
* **Article:** May 2018 - [Testing Laravel Authentication](https://medium.com/@DCzajkowski/testing-laravel-authentication-flow-573ea0a96318%0A) - Great walk through of the basics when testing auth.

