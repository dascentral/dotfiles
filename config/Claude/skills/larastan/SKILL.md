---
name: larastan
description: Runs `composer analyze` (Larastan / PHPStan) on a Laravel project and fixes any reported errors or warnings until the analysis passes cleanly. Use when the user asks to "run static analysis," "fix larastan issues," "run composer analyze," "fix phpstan errors," or types `/larastan`. Only runs in Laravel applications.
---

# Larastan

Run static analysis on a Laravel project and fix any issues found.

## Workflow

### Step 1: Confirm Laravel application

Detect Laravel by checking for **either**:

- An `artisan` file at the project root, **or**
- `laravel/framework` listed under `require` in `composer.json`.

If neither indicator is present, respond exactly:

> This is not a Laravel application.

Then stop. Take no further action.

### Step 2: Run analysis

```bash
composer analyze
```

### Step 3: Fix reported issues

Address each error and warning reported by the analyzer. Make minimal, targeted changes — do not refactor adjacent code that the analyzer did not flag.

### Step 4: Re-run to confirm

```bash
composer analyze
```

Repeat Steps 3 and 4 until the analyzer passes with no errors or warnings. If issues persist after a reasonable attempt and you cannot resolve them without broader changes, report the remaining issues to the user and stop.
