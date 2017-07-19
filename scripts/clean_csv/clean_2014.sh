#!/bin/bash
# clean 2014 TSE csv

DIR=`dirname $0`
ano=2014

find $ano -regex '.*\.\(csv\|CSV\|txt\|TXT\)$' -print0 \
	| xargs -0 sed -f $DIR/general_clean.sed -i --

echo "=> ok!"
