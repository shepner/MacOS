#!`which perl`

perl -i -p -e 's|[\r\n]+|\r\n|g' $1

