#!/bin/bash
# -*- ENCODING: UTF-8 -*-

MYSQL_ROOT=""
MYSQL_PASS=""
MYSQL_DB=""

#Get the list of tables.
TABLES="$(mysql --user=$MYSQL_ROOT --password=$MYSQL_PASS --database=$MYSQL_DB -Bse 'show tables')"

for table in $TABLES
do
  ESTATUS="$(mysql --user=$MYSQL_ROOT --password=$MYSQL_PASS --database=$MYSQL_DB -Bse 'repair table ' $table)"
  echo $ESTATUS
done


