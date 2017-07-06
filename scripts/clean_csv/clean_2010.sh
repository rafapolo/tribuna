#!/bin/bash
# clean 2010 TSE csv

find 2010 \( -name '*.csv' -o -name "*.CSV" -o -name "*.txt" -o -name "*.TXT" \) -print0 | xargs -0 \
 sed -e 's/\"\ /\"/g; s/\ \"/\"/g; s/\ +/\ /g; s/\"//g; s/#NULO#//g; s/#NULO//g' -i  --;

echo "=> ok!"
