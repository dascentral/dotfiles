# Evernote

## Introduction

Evernote is application software designed for note taking, organizing, task lists, and archiving.

## Installation

You have the following installation options:

1. Direct from the software developer: [https://evernote.com/download](https://evernote.com/download)
1. Via [Homebrew](https://brew.sh):

```bash
brew cask install evernote
```

## Personal Settings

I make the following customizations to the application settings:

### Desktop Application

* General > Uncheck “Show Evernote Helper in the menu bar"
* Clipper > Uncheck “Bounce the dock icon once”
* Clipper > Uncheck “Play a sound"
* Formatting > Change default font to Calibri 14pt - See below for details
* Formatting > Enable “Simplify formatting of pasted content”
* Formatting > Auto Format > Uncheck "Keyboard shortcuts automatically create lists, lines, and emojis"
* Context > Uncheck “Show Context"

### Evernote Clipper

* General > Notebook destination > Use "Articles"
* General > Default clip action > Use "Simplified article"
* General > After clip > Automatically close Clipper
* General > Related results > Uncheck
* General > PDF page button > Uncheck
* Shortcuts > Uncheck "Enable keyboard shortcuts"

## System Fonts

I like using Microsoft's "Calibri" font within Evernote however, since Microsoft packages its application fonts within the app bundle, they are not available by default to other macOS applications. I manually add them to Font Book:

* Browse to `/Applications`
* Right click on `Microsoft Word.app` and click "Show Package Contents"
* Browse to `/Contents/Resources/DFonts`
* Drag relevant items into Font Book
