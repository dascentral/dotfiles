# Laravel

## Introduction

[Laravel](http://laravel.com/) is a free, open-source PHP web framework, created by [Taylor Otwell](https://twitter.com/taylorotwell) and intended for the development of web applications following the model–view–controller (MVC) architectural pattern. I first discovered the framework in 2014 and immediately fell in love with its power and simplicity. It quickly became a key component within my preferred tech stack for any web development project.

Below I have attempted to inventory the various resources that I find relevent to my professional or personal work related to Laravel.

## First-Party Features

### Authentication

* **Laravel Docs:** [https://laravel.com/docs/master/authentication](https://laravel.com/docs/master/authentication)
* **Article:** Jan 2018 - [Laravel Middleware & Basic Auth](https://medium.com/oceanize-geeks/laravel-middleware-basic-auth-implementation-88b777361b5c) - I needed this for work. I'd avoid Basic Auth if at all possible.

### Cache

* **Package:** [JosephSilber/page-cache](https://github.com/JosephSilber/page-cache) - Adds static page caching

### Flash Messaging

Laravel provides an ability to store items in the session only for the next request. So this feature technically falls under Lararvel's "Session" component.

* **Laravel Docs:** [https://laravel.com/docs/master/session#flash-data](https://laravel.com/docs/master/session#flash-data)
* **Package:** [laracasts/flash](https://github.com/laracasts/flash) - The OG flash messaging package for Laravel applications
* **Package:** [spatie/laravel-flash](https://murze.be/a-laravel-package-to-flash-messages) - Lightweight package for flash messaging.

### Horizon

* **Article:** April 2019 - [Running queues for multiple applications on the same server with Laravel Horizon](https://medium.com/plint-sites/running-queues-for-multiple-applications-on-the-same-server-with-laravel-horizon-d743f455b23d?ref=laravelnews)

### Passport

* **Article:** Aug 2016 - [Learn about Grant Types in Laravel Passport](https://laravel-news.com/passport-grant-types/) - Great overview of Oauth grant types

### Routing

* **Article:** April 2018 - [Laravel Route Tips to Improve Your Routing](https://laravel-news.com/laravel-route-tips-to-improve-your-routing)

### Testing

* **Laravel Docs:** [https://laravel.com/docs/master/testing](https://laravel.com/docs/master/testing)
* **Course:** [Test Driven Laravel](https://course.testdrivenlaravel.com/) - Online course by Adam Wathan
* **Package:** [dczajkowski/auth-tests](https://github.com/dczajkowski/auth-tests) - Package that promotes validation of the full auth flows
* **Article:** May 2018 - [Testing Laravel Authentication](https://medium.com/@DCzajkowski/testing-laravel-authentication-flow-573ea0a96318%0A) - Great walk through of the basics when testing auth.

### Validation

* **Article:** [Laravel Postal Code Validation](https://laravel-news.com/laravel-postal-code-validation) - Supporting worldwide postal code validation

## Extending Laravel

### Cloud Deployments

[Laravel Forge](https://forge.laravel.com/) is a service that developers can use to "provision and deploy unlimited PHP applications on DigitalOcean, Linode, AWS, and more." While I appreciate the utility and simplicity of that service, my deployments require a more complex cloud hosting setup.

* **Article:** March 2019 - [Deploying a Laravel App in Kubernetes on Google Cloud](https://pusher.com/tutorials/laravel-kubernetes-google-cloud?ref=laravelnews)
* **Article**: Sept 2018 - [Kubernetes: deploy Laravel the easy way](https://learnk8s.io/blog/kubernetes-deploy-laravel-the-easy-way/?ref=laravelnews)

### GraphQL

* **Article:** March 2019 - [Developing and Securing GraphQL APIs with Laravel](https://auth0.com/blog/developing-and-securing-graphql-apis-with-laravel)
* **Article:** Oct 2018 - [Lighthouse GraphQL Server for Laravel](https://laravel-news.com/lighthouse-graphql-server-for-laravel)

### Settings

At the moment, "Settings" is my general term for the notion of persisting perferences for an individual application user.

* **Laracasts:** May 2015 - [Managing Mass User Settings](https://laracasts.com/lessons/managing-mass-user-settings) + [Part 2](https://laracasts.com/lessons/managing-mass-user-settings-part-2) - I found these videos in April 2019 and found the approach to still be quite elegant. The code for the lessons can be found on [GitHub](https://github.com/laracasts/Mass-User-Settings/blob/master/app/Settings.php).