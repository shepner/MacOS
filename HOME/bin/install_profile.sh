#!/bin/sh

WORKDIR=$HOME/tmp/MacOS
mkdir -p $WORKDIR

git clone https://github.com/shepner/MacOS.git $WORKDIR
cp -R $WORKDIR/HOME/ $HOME
chmod 750 $HOME/bin

rm -Rf $WORKDIR/MacOS

sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
