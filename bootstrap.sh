#!/bin/sh

WORKDIR=$HOME/tmp/MacOS
mkdir -p $WORKDIR

# Setup the database for locate
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

# This may prompt you to install the XCode command line tools
xcode-select --install

# kick off the minimum installation
bash <(curl -s https://raw.githubusercontent.com/shepner/MacOS/master/HOME/bin/install_profile.sh)
bash <(curl -s https://raw.githubusercontent.com/shepner/MacOS/master/HOME/bin/install_bin.sh)

# Download/install the scripts
git clone https://github.com/shepner/MacOS.git $WORKDIR
cp -R $WORKDIR/HOME/ $HOME
chmod -R 750 $HOME/bin

# Clean up after ourselves
rm -Rf $WORKDIR




