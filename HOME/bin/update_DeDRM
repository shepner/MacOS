#!/bin/sh

WORKDIR=$HOME/local/DeDRM
DOWNLOADS=$WORKDIR/downloads
mkdir -p $DOWNLOADS

URL=https://github.com/apprenticeharper/DeDRM_tools/releases/latest  # this points to the most current release

# This extracts out the path (not url) for the compiled ver
# "/apprenticeharper/DeDRM_tools/releases/download/v6.6.1/DeDRM_tools_6.6.1.zip"
FILE=`curl -L -s $URL | grep releases/download | cut -d '"' -f 2`    

# This will then return "6.6.1"
VERSION=`echo $FILE | cut -d '/' -f 6 | cut -d 'v' -f 2`

# fetch the bundle, place it in the appropriate location, and overwrite the old file if nessessary
wget -N -P $DOWNLOADS https://github.com/$FILE

unzip -o $DOWNLOADS/`basename $FILE` -d $WORKDIR/$VERSION
# The file we care about will be found here:
# "$WORKDIR/DeDRM_tools_6.6.1/DeDRM_Macintosh_Application/DeDRM.app"

# needed just in case the file permissions dont carry through
chmod +x $WORKDIR/$VERSION/DeDRM_Macintosh_Application/DeDRM.app/Contents/MacOS/droplet

# remove the old link
rm -Rf $HOME/Applications/DeDRM.app
ln -s $WORKDIR/$VERSION/DeDRM_Macintosh_Application/DeDRM.app $HOME/Applications/DeDRM.app
