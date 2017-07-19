#!/bin/bash
# clean 2002 TSE csv

DIR=`dirname $0`
ano=2002

find $ano -regex '.*\.\(csv\|CSV\|txt\|TXT\)$' -print0 \
	| xargs -0 sed -f $DIR/general_clean.sed -f $DIR/clean_2002.sed -i --

echo "=> ok!"
