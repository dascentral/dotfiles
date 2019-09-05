# Laravel Style Guide

## Introduction

It's a style guide!

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
