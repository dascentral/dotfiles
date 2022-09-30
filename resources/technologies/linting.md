# Linting

## Introduction

> The ratio of time spent reading (code) versus writing is well over 10 to 1... (therefore) making it easy to read makes it easier to write.
> 
> -Bob Martin, Clean Code

For a very long time, I struggled to find a formatting and linting setup that I felt made sense or that worked effectively. I'm about 90% there. This document describes the tools that I leverage, my approach to their use, and a bit about what I've learned along the way.

## Stylelint

[Stylelint](https://stylelint.io/) is "a mighty, modern linter that helps you avoid errors and enforce conventions in your styles."

I use Stylelint to ensure that the CSS that I write is clean. Installation requires little more than an `npm install`. See their [getting started](https://stylelint.io/user-guide/get-started) guide for details regarding installation and setup.

I leverage the following scripts within my `package.json`:

```bash
    "scripts": {
        "lint:css": "stylelint 'src/**/*.css'",
        "lint:css:fix": "stylelint 'src/**/*.css' --fix"
    },
```

### Tailwind CSS

I use [Tailwind CSS](https://tailwindcss.com/) as my primary CSS framework. It brings custom directives into play that need to be accounted for within the linting config. The following `stylelint.config.js` will ensure those custom directives are ignored:

```bash
module.exports = {
  extends: ['stylelint-config-recommended'],
  rules: {
    'at-rule-no-unknown': [
      true,
      {
        ignoreAtRules: [
          'tailwind',
          'apply',
          'variants',
          'responsive',
          'screen',
        ],
      },
    ]
  },
};
```

### Resources

* **Article:** June 2019 - [Visual Studio Code CSS linting with Tailwind](https://www.meidev.co/blog/visual-studio-code-css-linting-with-tailwind/)
* **Article:** April 2017 - [Lint your CSS with stylelint](https://css-tricks.com/stylelint/)

## Resources

* **Article:** Sept 2022 — [Laravel Breeze with Inertia, React, Eslint, Prettier, Pint and Husky](https://www.luckymedia.dev/blog/laravel-breeze-with-inertia-react-eslint-prettier-pint-and-husky)
