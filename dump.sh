#!/bin/bash

source `dirname $0`/config.env

DEST="tse-`date +%Y-%m-%dT%H:%M:%S`.sql"

MYSQL_PWD=$DB_PASS mysqldump -u$DB_USER -h$DB_HOST --result-file="$DEST" $DB_NAME
gzip --best "$DEST"
