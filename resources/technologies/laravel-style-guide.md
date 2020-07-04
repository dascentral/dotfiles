# Laravel Style Guide

## Introduction

It's a style guide!

## Artisan Console

Ensure console commands focus exclusively on triggering business logic or functionality that lives elsewhere within the app codebase. Doing so allows that logic to be leveraged throughout all facets of the application.

## Databases

### Factories

Factories should be written such that they can run independently of other seeders. They should assume an empty database.

In my early Laravel days, I would occasionally populate factory models by querying the database. This approach reduces flexibility by requiring seeders to be run in a specific order.

**Good**

```php
'user_id' => function () {
    return factory(App\Models\User::class)->create()->id;
},
```

**Bad**

```php
'user_id' => App\Models\User::inRandomOrder()->first()->id,
```

## Localization

All system text that may be presented to the user, which might include model accessors that return `string` values, should be passed through the localization engine.

**Good**

```php
public function getStatusAttribute() {
    return __('In Progress');
}
```

**Bad**

```php
public function getStatusAttribute() {
    return 'In Progress';
}
```

