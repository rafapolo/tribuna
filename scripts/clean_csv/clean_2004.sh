#!/bin/bash
# clean 2004 TSE csv

DIR=`dirname $0`
ano=2004

find $ano -regex '.*\.\(csv\|CSV\|txt\|TXT\)$' -print0 \
	| xargs -0 sed -f $DIR/general_clean.sed -i --

echo "=> ok!"
