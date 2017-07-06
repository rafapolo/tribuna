#!/bin/bash
# clean 2014 TSE csv

find 2014 \( -name '*.csv' -o -name "*.CSV" -o -name "*.txt" -o -name "*.TXT" \) -print0 | xargs -0 \
 sed -e 's/\r(?!\n)//g; s/\"\ /\"/g; s/\ \"/\"/g; s/\"//g; s/\ +/\ /g; s/#NULO#//g; s/#NULO//g' -i  --;

echo "=> ok!"
