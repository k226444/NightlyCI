#!/bin/zsh

sudo xcode-select --switch /Applications/Xcode.app
sudo xcodebuild -license

echo 'export PATH="'"$(python3 -m site --user-base)"'/bin:$PATH"' >> ~/.zshenv
python3 -m pip install --user mercurial==6.1.4

curl https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py -O
python3 bootstrap.py --no-interactive --application-choice=browser

cd mozilla-unified

./mach build