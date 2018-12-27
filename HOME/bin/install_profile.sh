#!/bin/sh

WORKDIR=$HOME/tmp/MacOS
mkdir -p $WORKDIR

# This will prompt you to install the XCode command line tools
xcode-select --install

# Download/install the scripts
git clone https://github.com/shepner/MacOS.git $WORKDIR
cp -R $WORKDIR/HOME/ $HOME
chmod 750 $HOME/bin

# Clean up after ourselves
rm -Rf $WORKDIR

# Setup the database for locate
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
