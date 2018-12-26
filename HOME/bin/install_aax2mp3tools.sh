#!/bin/sh

WORKDIR=~/local/aax2mp3tools
DOWNLOADS=$WORKDIR/downloads/

mkdir -p $DOWNLOADS
mkdir -p $HOME/bin

####

# audible-activator
# https://github.com/inAudible-NG/audible-activator

pip3 install requests
pip3 install selenium

wget -O $DOWNLOADS/audible-activator.zip https://github.com/inAudible-NG/audible-activator/archive/master.zip
unzip -jf $DOWNLOADS/audible-activator.zip -d $WORKDIR/audible-activator
rm -f $HOME/bin/audible-activator.py
ln -s $WORKDIR/audible-activator/audible-activator.py $HOME/bin/audible-activator.py

wget -P $DOWNLOADS https://chromedriver.storage.googleapis.com/2.33/chromedriver_mac64.zip
unzip -jf $DOWNLOADS/chromedriver_mac64.zip -d $WORKDIR/audible-activator

####

# AAXtoMP3
# https://github.com/KrumpetPirate/AAXtoMP3

brew install ffmpeg

wget -O $DOWNLOADS/AAXtoMP3.zip https://github.com/KrumpetPirate/AAXtoMP3/archive/master.zip
unzip -jf $DOWNLOADS/AAXtoMP3.zip -d $WORKDIR/AAXtoMP3
rm -f $HOME/bin/AAXtoMP3
ln -s $WORKDIR/AAXtoMP3/AAXtoMP3 $HOME/bin/AAXtoMP3
