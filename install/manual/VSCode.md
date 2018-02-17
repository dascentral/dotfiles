# Visual Studio Code

## Download
[https://code.visualstudio.com/](https://code.visualstudio.com/)


## Settings Synchronization
I like to store my settings in the cloud so that I can sync them across computers.

```
cd ~/Library/Application\ Support/Code/User
cp settings.json ~/GDrive/Documents/Software/VSCode
rm settings.json
ln -s ~/GDrive/Documents/Software/VSCode/settings.json settings.json
```
