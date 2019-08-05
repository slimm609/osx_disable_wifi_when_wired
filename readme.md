# Overview

This is a bash script that will automatically turn your wifi off if you connect your computer to an ethernet connection and turn wifi back on when you unplug your ethernet cable/adapter. If you decide to turn wifi on for whatever reason, it will remember that choice. This was improvised from [this mac hint](http://hints.macworld.com/article.php?story=20100927161027611) to work with Yosemite, and without hard-coding the adapter names. It's supposed to support growl, but I didn't check that part. I did, however, add OSX notification center support. Feel free to fork and fix any issues you encounter.

Most the credit for these changes go to [Dave Holland](https://github.com/davidholland).

## Requirements

- Mac OSX 10+
- Administrator privileges

## Installation Instructions

- Copy `toggleAirport.sh` to `/Library/Scripts/`
- Run `chmod 755 /Library/Scripts/toggleAirport.sh`
- Copy `com.mine.toggleairport.plist` to `/Library/LaunchAgents/`
- Run `chmod 644 /Library/LaunchAgents/com.mine.toggleairport.plist`
- Run `sudo launchctl load /Library/LaunchAgents/com.mine.toggleairport.plist` to start the watcher

## Uninstall Instructions

- Run `sudo launchctl unload /Library/LaunchAgents/com.mine.toggleairport.plist` to stop the watcher
- Delete `/Library/Scripts/toggleAirport.sh`
- Delete `/Library/LaunchAgents/com.mine.toggleairport.plist`
- Delete `/private/var/tmp/prev_eth_on`
- Delete `/private/var/tmp/prev_air_on`

## Misc

To debug, just run: `sudo /Library/Scripts/toggleAirport.sh` and add echo's wherever you'd like