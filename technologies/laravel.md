# Laravel

## Introduction

First there was sliced bread. Then there was Laravel - The PHP framework For Web Artisans.

[Laravel](http://laravel.com/) is a free, open-source PHP web framework, created by [Taylor Otwell](https://twitter.com/taylorotwell) and intended for the development of web applications following the model–view–controller (MVC) architectural pattern. I first discovered the framework in 2014 and immediately fell in love with its power and simplicity. It quickly became a key component within my preferred tech stack for any web development project.

Below I have attempted to inventory the various resources that I find relevent to my professional or personal work with the framework.

## Training Resources

### Recommended

* [Laracasts](https://laracasts.com) - Basically, everything on this site
* [Test Driven Laravel](https://course.testdrivenlaravel.com/) - by [Adam Wathan](https://twitter.com/adamwathan)

### Others

I have not personally explored these but they seem well regarded within the community.

* [Confident Laravel](https://confidentlaravel.com/) - More on testing
* [Diving Laravel](https://divinglaravel.com) - A dive into Laravel Core, Packages, and Technologies
* [Eloquent by Example](https://eloquentbyexample.com)
* [Eloquent Performance Patterns](https://reinink.ca/eloquent-course/)
* [Laravel Core Adventures](https://laravelcoreadventures.com)
* [Laravel Daily](https://laraveldaily.teachable.com/courses)
* [Laravel Secrets](https://laravelsecrets.com/)
* [Mailcoach](https://mailcoach.app/video-course)
* [Single-Page Laravel](https://singlepagelaravel.com)

## Design Patterns

### Decorator Pattern

Wikipedia defines the [decorator pattern]((https://en.wikipedia.org/wiki/Decorator_pattern)) as follows:

> In object-oriented programming, the decorator pattern is a design pattern that allows behavior to be added to an individual object, dynamically, without affecting the behavior of other objects from the same class.

I primarily use this pattern to facilitate caching within my Laravel applications.

* **Article:** Feb 2020 - [Design Patterns in PHP: Decorator (with Laravel)](https://dev.to/ahmedash95/design-patterns-in-php-decorator-with-laravel-5hk6)

### Refactoring to Actions

* [Refactoring to Actions](https://freek.dev/1371-refactoring-to-actions)

### View Models

A view model class is designed to house the complex logic of your views and clean up view-related logic from controllers.

* [Laravel Beyond CRUD](https://stitcher.io/blog/laravel-beyond-crud-08-view-models) - Chapter 8 - View models
* **Article:** Sept 2018 - [Laravel View Models](https://laravel-news.com/laravel-view-models) - via Laravel News

### Caching Strategies

* [Model Caching](https://laravel-news.com/laravel-model-caching)

## First-Party Features

### Authentication

* **Laravel Docs:** [https://laravel.com/docs/master/authentication](https://laravel.com/docs/master/authentication)
* **Article:** Jan 2018 - [Laravel Middleware & Basic Auth](https://medium.com/oceanize-geeks/laravel-middleware-basic-auth-implementation-88b777361b5c) - I needed this for work. You should avoid Basic Auth at all costs.
* **Article:** Sept 2017 - [Laravel Reauthenticate](https://medium.com/@browner12/laravel-reauthenticate-274c48f2b642) - Implement a password confirmation within your application.
* **Tutorial:** [Logout Other Devices after Login](https://www.youtube.com/watch?v=mnModJ3GsbU) - Video

### Authorization

* **Article:** April 2019 - [Junges Laravel ACL](https://laravel-news.com/junges-laravel-acl)

### Blade

* **Article:** April 2020 - [Some cool Laravel 7 Blade components ](https://freek.dev/1612-some-cool-laravel-7-blade-components)
* **Article:** June 2019 - [Laravel Blade Helper](https://laravel-news.com/laravel-blade-helper)

### Controllers

* **Article:** April 2019 - [Simplifying controllers](https://freek.dev/1324-simplifying-controllers)

### Dusk

* **Article:** Dec 2018 - [Laravel Dusk Dashboard Package](https://laravel-news.com/laravel-dusk-dashboard-package)
* **Article:** Feb 2017 - [Automatically Making Monthly Payments with Dusk](https://laravel-news.com/automatically-making-monthly-payments-with-dusk)

### Eloquent

* **Article:** Dec 2019 - [Fetching data in the perimeter of your Laravel applications](https://reinink.ca/articles/fetching-data-in-the-perimeter-of-your-laravel-applications)
* **Article:** Oct 2018 - [20 Laravel Eloquent Tips and Tricks](https://laravel-news.com/eloquent-tips-tricks)
* **Article:** May 2018 - [Leverage Eloquent To Prepare Your URLs](https://laravel-news.com/leverage-eloquent-to-prepare-your-urls)

### Facades

* **Laravel Docs:** [https://laravel.com/docs/master/facades](https://laravel.com/docs/master/facades)
* **Article:** [Real-time (automatic) Facades in Laravel 5.4](https://mattstauffer.com/blog/real-time-automatic-facades-in-laravel-5-4/) - This is a feature that I did not discover until Laravel 5.8 but proves very helpful and relevant when pursuing a test strategy that employes [class-based model factories](https://tighten.co/blog/tidy-up-your-tests-with-class-based-model-factories).

### Flash Messaging

Laravel provides an ability to store items in the session only for the next request. So this feature technically falls under Lararvel's "Session" component.

* **Laravel Docs:** [https://laravel.com/docs/master/session#flash-data](https://laravel.com/docs/master/session#flash-data)
* **Tutorial:** [Building a flash message component with Vue.js and Tailwind CSS](https://laravel-news.com/building-a-flash-message-component-with-vue-js-and-tailwind-css)

### Form Requests

Form requests are custom request classes that contain validation logic.

* **Laravel Docs:** [https://laravel.com/docs/master/validation#form-request-validation](https://laravel.com/docs/master/validation#form-request-validation)
* **Article:** Nov 2019 - [Laravel Form Requests - more than validation](https://pociot.dev/22-laravel-form-requests-more-than-validation)

### Horizon

* **Article:** Sept 2019 - [Config Laravel Horizon, queue, balance, processes and priority in redis](https://medium.com/@panjeh/laravel-config-horizon-queue-balance-processes-priority-in-redis-c36dd4c16859)
* **Article:** April 2019 - [Running queues for multiple applications on the same server with Laravel Horizon](https://medium.com/plint-sites/running-queues-for-multiple-applications-on-the-same-server-with-laravel-horizon-d743f455b23d?ref=laravelnews)

### Markdown Mailables

* [MarkdownMail](https://markdownmail.com/) - Create Laravel markdown email themes without a Hassle

### Passport

* **Article:** May 2019 - [Testing Passport Authenticated Controllers and Routes in Laravel](https://clubstudio.co.uk/journal/testing-passport-authenticated-controllers-and-routes-in-laravel)
* **Article:** Aug 2016 - [Learn about Grant Types in Laravel Passport](https://laravel-news.com/passport-grant-types/)

### Routing

* **Article:** April 2018 - [Laravel Route Tips to Improve Your Routing](https://laravel-news.com/laravel-route-tips-to-improve-your-routing)

### Testing

* **Laravel Docs:** [https://laravel.com/docs/master/testing](https://laravel.com/docs/master/testing)
* **Course:** [Test Driven Laravel](https://course.testdrivenlaravel.com/) - Online course by Adam Wathan
* **Article:** Aug 2019 - [Class-based Model Factories](https://tighten.co/blog/tidy-up-your-tests-with-class-based-model-factories)
* **Article:** July 2019 - [Start testing your Laravel applications](https://jasonmccreary.me/articles/start-testing-laravel/)
* **Article:** June 2018 - [Going Deeper with Factories Through Factory States
](https://laravel-news.com/going-deeper-with-factories-through-factory-states)
* **Article:** May 2018 - [Testing Laravel Authentication](https://medium.com/@DCzajkowski/testing-laravel-authentication-flow-573ea0a96318%0A) - Great walk through of auth testing basics
* **Article:** March 2018 - [Testing Vue components with Laravel Dusk](https://laravel-news.com/testing-vue-components-with-laravel-dusk)
* **Article:** Oct 2017 - [Continuous Testing Dashboard for Laravel](https://laravel-news.com/testing-dashboard)
* **Article:** Sept 2017 - [A Roundup of Laravel Testing Resources and Packages](https://laravel-news.com/laravel-testing-resources)
* **Tweet:** Mar 2020 - [Test Performance](https://twitter.com/michaeldyrynda/status/1235896458156503040) - Discusses how to improve test performance related to database operations
* **Repository:** [dczajkowski/auth-tests](https://github.com/dczajkowski/auth-tests) - Promotes validation of the full auth flows
* **Repository:** [spatie/laravel-mailcoach-tests](https://github.com/spatie/laravel-mailcoach-tests/blob/master/TestCase.php) - A split of the spatie/laravel-mailcoach tests

### Validation

* **Article:** April 2019 - [Laravel Postal Code Validation](https://laravel-news.com/laravel-postal-code-validation) - Supporting worldwide postal code validation
* **Article:** Nov 2015 - [Validate (almost) anything in Laravel](https://freek.dev/315-validate-almost-anything-in-laravel)

## Extending Laravel

### Actions

* **Article:** June 2019 - [Refactoring to actions](https://freek.dev/1371-refactoring-to-actions)
* **Article:** May 2019 - [Laravel Actions Package](https://laravel-news.com/laravel-actions-package)

### API Authentication

* **Article:** Aug 2019 - [JSON APIs with Laravel: Part 5 - Authentication and Permissions](https://sarfas.codes/blog/json-apis-with-laravel-part-5-authentication-and-permissions?ref=laravelnews) - JWT approach
* **Article:** May 2019 - [Add API Keys to Your Laravel Models with Laravel Keyable](https://laravel-news.com/add-api-keys-to-your-laravel-models-with-laravel-keyable)

### AWS

#### SES - Simple Email Service

* **Tutorial:** - [Configure Amazon SES on Laravel 5.8 in 5 minutes](https://medium.com/@martin.riedweg/configure-amazon-ses-on-laravel-5-8-in-5-minutes-764c30df6399)

#### SNS - Simple Notification Service - Events

* **Article:** June 2019 - [Laravel SNS Events Package](https://laravel-news.com/laravel-sns-events-package)

### Cloud Deployments

[Laravel Forge](https://forge.laravel.com/) is a service that developers can use to "provision and deploy unlimited PHP applications on DigitalOcean, Linode, AWS, and more." While I appreciate the utility and simplicity of that service, my deployments require a more complex cloud hosting setup.

* **Article:** May 2019 - [Deploy a Laravel Application to Kubernetes using Gitlab CI](https://itnext.io/deploy-a-laravel-application-to-kubernetes-using-gitlab-ci-2538a6bbd373)
* **Article:** March 2019 - [Deploying a Laravel App in Kubernetes on Google Cloud](https://pusher.com/tutorials/laravel-kubernetes-google-cloud?ref=laravelnews)
* **Article**: Sept 2018 - [Kubernetes: deploy Laravel the easy way](https://learnk8s.io/blog/kubernetes-deploy-laravel-the-easy-way/?ref=laravelnews)

### Continuous Integration

* **Article:** Oct 2019 - [A github CI workflow tailored to modern PHP applications](https://ma.ttias.be/a-github-ci-workflow-tailored-to-laravel-applications/)
* **Article:** Dec 2018 - [Our Gitlab CI pipeline for Laravel applications](https://ohdear.app/blog/our-gitlab-ci-pipeline-for-laravel-applications)
* **Tutorial:** [Continuous Integration for your Laravel Application with GitLab CI](https://www.phpjobs.app/blog/continuous-integration-for-your-laravel-application-with-gitlab-ci?ref=laravelnews)

### Docker

* **Tutorial:** Feb 2020 - [How To Containerize a Laravel Application for Development with Docker Compose on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-containerize-a-laravel-application-for-development-with-docker-compose-on-ubuntu-18-04)
* **Article:** May 2019 - [The beauty of Docker for local Laravel development](https://dev.to/aschmelyun/the-beauty-of-docker-for-local-laravel-development-13c0)
* **Article:** Nov 2018 - [How To Set Up Laravel, Nginx, and MySQL with Docker Compose](https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose)
* **Article:** Aug 2018 - [Creating Multi-Stage Docker Builds for Laravel](https://laravel-news.com/multi-stage-docker-builds-for-laravel)
* **Article:** Mar 2018 - [Stop deploying Laravel manually, steal this Docker configuration instead](https://hackernoon.com/stop-deploying-laravel-manually-steal-this-docker-configuration-instead-da9ecf24cd2e)
* **Course:** [Docker for PHP Developers](https://bitpress.io/docker-for-php-developers/)

### GraphQL

* **Article:** March 2019 - [Developing and Securing GraphQL APIs with Laravel](https://auth0.com/blog/developing-and-securing-graphql-apis-with-laravel)
* **Article:** Oct 2018 - [Lighthouse GraphQL Server for Laravel](https://laravel-news.com/lighthouse-graphql-server-for-laravel)

### HATEOAS

Hypermedia as the Engine of Application State (HATEOAS) allows you to expose the authorization logic of your REST API. This package makes it easy to add HATEOAS links to your Laravel API resources. Source: [Wikipedia](https://en.wikipedia.org/wiki/HATEOAS)

* **Article:** Aug 2019 - [Laravel HATEOAS Package](https://laravel-news.com/laravel-hateoas-package)

### Helpers

* **Article:** [Creating Your Own PHP Helpers in a Laravel Project](https://laravel-news.com/creating-helpers)

### Security

* **Article:** May 2019 - [The Laravel Security Checklist](https://laravel-news.com/the-laravel-security-checklist-sponsor)

### Settings

At the moment, "Settings" is my general term for the notion of persisting perferences for an individual application user.

* **Article:** Dec 2018 - [Global Application Settings](https://laravel-news.com/global-application-settings)
* **Laracasts:** May 2015 - [Managing Mass User Settings](https://laracasts.com/lessons/managing-mass-user-settings) + [Part 2](https://laracasts.com/lessons/managing-mass-user-settings-part-2) - I found these videos in April 2019 and found the approach to still be quite elegant. The code for the lessons can be found on [GitHub](https://github.com/laracasts/Mass-User-Settings/blob/master/app/Settings.php).

## Performance

I am not sure I will wind up with enough resources to warrant maintaining "Performance" as it's only first-party section within this document but performance is an incredibly important aspect of well-written application.

* **Article:** Oct 2018 - [Measure Anything in Laravel with StatsD](https://laravel-news.com/measure-anything-laravel-statsd)
* **Article:** July 2018 - [Laravel Query Detector](https://laravel-news.com/laravel-query-detector)
* **Article:** Sept 2018 - [Laravel Health Panel](https://laravel-news.com/laravel-health-panel) - "Health" isn't necessarily performance but it warrants a mention here.

## Packages

### Recommended

#### First-Party

Laravel provides a number of first party packages that are of significant quality. I apply these to nearly every Laravel project that I create.

* [Laravel Dusk](https://laravel.com/docs/master/dusk) - Browser automation testing made easy
* [Laravel Horizon](https://laravel.com/docs/master/horizon) - Dashboard and code-driven configuration for your Laravel-powered Redis queues
* [Laravel Nova](https://nova.laravel.com) - Laravel administration panel
* [Laravel Passport](https://laravel.com/docs/master/passport) - Protect your APIs with this full OAuth2 server implementation
* [Laravel Telescope](https://laravel.com/docs/master/telescope) - Debug assistant for the Laravel framework

#### require

* [graham-campbell/markdown](https://github.com/GrahamCampbell/Laravel-Markdown) - A CommonMark wrapper for Laravel 5
* [spatie/laravel-html](https://github.com/spatie/laravel-html) - HTML generator I use for form/model binding
* [predis/predis](https://github.com/nrk/predis) - A Redis client for PHP however, word on the street is that this package has been abandoned

#### require-dev

* [barryvdh/laravel-debugbar](https://github.com/barryvdh/laravel-debugbar) - Integrates [PHP Debug Bar](http://phpdebugbar.com/) with Laravel
* [beyondcode/laravel-query-detector](https://github.com/beyondcode/laravel-query-detector) - An N+1 query detector for Laravel
* [codedungeon/phpunit-result-printer](https://github.com/mikeerickson/phpunit-pretty-result-printer) - Makes your PHPUnit output more visually appealing

### Want to explore

I have seen these items referenced across various tweets, posts, etc. Worth exploring altough I have not yet checked them out.

* [antonioribeiro/countries](https://github.com/antonioribeiro/countries) - Database of countries and host of information beyond that
* [antonioribeiro/health](https://laravel-news.com/laravel-health-panel) - Checks if the application’s resources are running as expected
* [aungwinthant/apilogger](https://laravel-news.com/api-logger-package) - Enables debugging of API logs
* [davejamesmiller/laravel-breadcrumbs](https://laravel-news.com/laravel-breadcrumbs-package/)
* [fitztrev/query-tracer](https://laravel-news.com/query-tracer-package) - Find exactly where a query is being called in your app
* [JosephSilber/page-cache](https://github.com/JosephSilber/page-cache) - Adds static page caching
* [laracasts/flash](https://github.com/laracasts/flash) - The OG flash messaging package for Laravel applications
* [spatie/laravel-flash](https://murze.be/a-laravel-package-to-flash-messages) - Lightweight package for flash messaging
* [spatie/laravel-query-builder](https://github.com/spatie/laravel-query-builder) - Easily build Eloquent queries from API requests
* [webpatser/laravel-uuid](https://packagist.org/packages/webpatser/laravel-uuid)
* [Laravel Mailbox](https://laravel-news.com/laravel-mailbox) - Easily handle incoming email

