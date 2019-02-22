# Homebrew

## Introduction

Homebrew is the missing package manager for macOS.

[http://brew.sh/](http://brew.sh/)

## Installation

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
```

## Configuration

You will want to make sure that Homebrew's `sbin` is found in your system's PATH directory.

```bash
export PATH=$PATH:/usr/local/sbin
```
