#!/bin/bash
# clean 2010 TSE csv

DIR=`dirname $0`
ano=2010

find $ano -regex '.*\.\(csv\|CSV\|txt\|TXT\)$' -print0 \
	| xargs -0 sed -f $DIR/general_clean.sed -f $DIR/clean_2010.sed -i --

echo "=> ok!"
