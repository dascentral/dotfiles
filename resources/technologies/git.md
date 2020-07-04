# Git

## Introduction

[Git](https://git-scm.com) is a distributed version-control system for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files. Its goals include speed, data integrity, and support for distributed, non-linear workflows.

## Useful Commands

### Checkout remote branch

Two ways to do this:

```bash
git checkout --track origin/[branch]
```

```bash
git checkout -b [branch] origin/[branch]
```

### Tags

I never remember how to checkout a specific tag. It's actually quite simple:

```bash
git checkout tags/v1.0
```
