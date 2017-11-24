# UNIX-OSX
Apple OS X specific utils and tweaks



[How to convert Audible aax files to mp3 in Linux](https://en.code-bude.net/2017/02/12/how-to-convert-audible-aax-files-to-mp3-in-linux/)

[AAXtoMP3](https://github.com/KrumpetPirate/AAXtoMP3)

[audible-activator](https://github.com/inAudible-NG/audible-activator)

``` shell
mkdir ~/aax2mp3tools
cd ~/aax2mp3tools

#audible-activator
wget https://github.com/inAudible-NG/audible-activator/archive/master.zip
unzip master.zip
rm master.zip
pip install requests
pip install selenium
cd audible-activator-master
ln -s ~/aax2mp3tools/audible-activator-master/audible-activator.py ~/bin/audible-activator.py
#make sure the correct ver is installed:  https://sites.google.com/a/chromium.org/chromedriver/downloads
wget https://chromedriver.storage.googleapis.com/2.33/chromedriver_mac64.zip
unzip chromedriver_linux64.zip

#AAXtoMP3
wget https://github.com/KrumpetPirate/AAXtoMP3/archive/master.zip
unzip master.zip
rm master.zip
brew install ffmpeg
ln -s ~/aax2mp3tools/AAXtoMP3-master/AAXtoMP3 ~/bin/AAXtoMP3
```


To get the activation key run `audible-activator.py -l us` and the last line is the string needed for AAXtoMP3

To convert to MP3, run `AAXtoMP3.sh <authcode> <aax-file>`.  You can use wildcards (ie \*.aax) for the filename


