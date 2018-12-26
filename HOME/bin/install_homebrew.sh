#!/bin/sh

WORKDIR=$HOME/local/homebrew
mkdir -p $WORKDIR

curl -N -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C $WORKDIR


cat >> $HOME/.profile << EOF

# Homebrew
if [ -d \$WORKDIR ]; then
  export PATH=\$HOME/local/homebrew/bin:\$HOME/local/homebrew/sbin:\$PATH
fi

EOF


echo "\n\nNext steps:"
echo "1) adjust ~/.profile as appropriate"
echo "2) restart terminal"
echo "3) run \`brew update\`"
