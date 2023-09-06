#!/bin/zsh

sudo xcode-select --switch /Applications/Xcode.app
sudo xcodebuild -license

#export PATH="'"$(python3 -m site --user-base)"'/bin:$PATH"
#python3 -m pip install --user mercurial==6.1.4
chmod +x /Users/runner/work/NightlyCI/NightlyCI/hg
/Users/runner/work/NightlyCI/NightlyCI/hg pull https://hg.mozilla.org/mozilla-unified

#python3 bootstrap.py --no-interactive --application-choice=browser

#cd mozilla-unified

sh mach build
