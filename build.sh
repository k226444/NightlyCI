#!/bin/zsh

brew install Mercurial

hg init
hg pull https://hg.mozilla.org/mozilla-unified

./mach build
