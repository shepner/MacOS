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
cd audible-activator-master
ln -s ~/aax2mp3tools/audible-activator-master/audible-activator.py ~/bin/audible-activator.py

#AAXtoMP3
pip install requests
pip install selenium
brew install ffmpeg
wget https://chromedriver.storage.googleapis.com/2.27/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
ln -s ~/aax2mp3tools/AAXtoMP3-master/AAXtoMP3 ~/bin/AAXtoMP3
```


To get the activation key: `audible-activator.py -l us`

The last line is the string needed for AAXtoMP3

