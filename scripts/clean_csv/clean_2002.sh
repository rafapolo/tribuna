#!/bin/bash
# clean 2002 TSE csv

find 2002 \( -name '*.csv' -o -name "*.CSV" -o -name "*.txt" -o -name "*.TXT" \) -print0 | xargs -0 \
 sed -e 's/0002/2002/g; s/\"\ /\"/g; s/\ \"/\"/g; s/\ +/\ /g; s/\"//g; s/#NULO#//g; s/#NULO//g' -i  --;

echo "=> ok!"
