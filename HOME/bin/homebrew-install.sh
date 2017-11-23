#!/bin/sh

mkdir -p $HOME/homebrew

curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C $HOME/homebrew

cat >> $HOME/.profile << EOF

# Homebrew
if [ -d \$HOME/homebrew ]; then
        export PATH=\$HOME/homebrew/bin:\$HOME/homebrew/sbin:\$PATH
fi

EOF

echo "\n\nNext steps:"
echo "1) adjust ~/.profile as appropriate"
echo "2) restart terminal"
echo "3) run \`brew update\`"
