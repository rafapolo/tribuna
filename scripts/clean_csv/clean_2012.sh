#!/bin/bash
# clean 2012 TSE csv

DIR=`dirname $0`
ano=2012

find $ano -regex '.*\.\(csv\|CSV\|txt\|TXT\)$' -print0 \
	| xargs -0 sed -f $DIR/general_clean.sed -f $DIR/clean_2012.sed -i --

echo "=> ok!"
