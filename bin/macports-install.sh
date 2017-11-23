#!/bin/sh
#install macports in the user's home dir
#http://guide.macports.org/#installing.macports.source.multiple
#http://truongtx.me/2013/11/08/macports-from-home-directory/

#this is the file to download
FILE="MacPorts-2.4.2.tar.bz2"

TMPDIR=/tmp/macports

export PATH=/bin:/sbin:/usr/bin:/usr/sbin


mkdir -p $HOME/macports
mkdir -p $TMPDIR

cd $TMPDIR

curl -L -o $TMPDIR/$FILE https://distfiles.macports.org/MacPorts/$FILE
tar -xf $TMPDIR/$FILE

cd $TMPDIR/`echo $FILE | sed 's/.tar.bz2//'`

USER=`id -un`
GROUP=`id -gn`
#GROUP="CP\Domain Users"  #same thing
#GROUP=869469075  #python -c 'import grp; print grp.getgrnam("CP\Domain Users").gr_gid'  #doesnt like this either
#GROUP=CP\\Domain\\ Users  #this results with "admin"

#./configure --enable-readline --prefix=$HOME/macports --with-install-user=$USER --with-install-group=$GROUP
#./configure --enable-readline --prefix=$HOME/macports --with-install-user=$USER --with-applications-dir=$HOME/Applications
./configure --enable-readline --prefix=$HOME/macports --with-install-user=$USER --with-install-group=$GROUP  --with-applications-dir=$HOME/Applications

make
make install

rm -Rf $TMPDIR


cat >> $HOME/.profile << EOF

# MacPorts
if [ -d \$HOME/macports ]; then
	export PATH=\$HOME/macports/bin:\$HOME/macports/sbin:\$PATH
	export MANPATH=\$HOME/macports/share/man:\$MANPATH
fi

EOF

echo "\n\nNext steps:"
echo "1) adjust ~/.profile as appropriate"
echo "2) restart terminal"
echo "3) connect to guest"
echo "4) run \`port -v selfupdate\`"
