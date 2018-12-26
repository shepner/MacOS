#!/bin/sh
#
# How to convert Audible aax files to mp3 in Linux
# https://en.code-bude.net/2017/02/12/how-to-convert-audible-aax-files-to-mp3-in-linux/
#
# AAXtoMP3
# https://github.com/KrumpetPirate/AAXtoMP3
#
# audible-activator
# https://github.com/inAudible-NG/audible-activator
#
# To get the activation key run `audible-activator.py -l us` and the last line is the string needed for AAXtoMP3
# To convert to MP3, run `AAXtoMP3.sh <authcode> <aax-file>`.  You can use wildcards (ie \*.aax) for the filename
# or have the authcode in '.authcode'


WORKDIR=$HOME/local/aax2mp3tools
DOWNLOADS=$WORKDIR/downloads

mkdir -p $DOWNLOADS
mkdir -p $HOME/bin

####

# audible-activator
# https://github.com/inAudible-NG/audible-activator

pip3 install requests
pip3 install selenium

wget -N -O $DOWNLOADS/audible-activator.zip https://github.com/inAudible-NG/audible-activator/archive/master.zip
unzip -j -o $DOWNLOADS/audible-activator.zip -d $WORKDIR/audible-activator
rm -f $HOME/bin/audible-activator.py
ln -s $WORKDIR/audible-activator/audible-activator.py $HOME/bin/audible-activator.py

wget -N -P $DOWNLOADS https://chromedriver.storage.googleapis.com/2.33/chromedriver_mac64.zip
unzip -j -o $DOWNLOADS/chromedriver_mac64.zip -d $WORKDIR/audible-activator

####

# AAXtoMP3
# https://github.com/KrumpetPirate/AAXtoMP3

brew install ffmpeg

wget -N -O $DOWNLOADS/AAXtoMP3.zip https://github.com/KrumpetPirate/AAXtoMP3/archive/master.zip
unzip -j -o $DOWNLOADS/AAXtoMP3.zip -d $WORKDIR/AAXtoMP3
rm -f $HOME/bin/AAXtoMP3
ln -s $WORKDIR/AAXtoMP3/AAXtoMP3 $HOME/bin/AAXtoMP3
