#!/bin/bash
# Author: Israel Lopez
# Created: 7/1/2013
# This updates the Fishbowl Inventory Database with SQL Comments
FIREBIRDISQL="/usr/bin/isql-fb";
DATABASEPATH="/home/ilopez/git/fishbowldatadictionary/data/Fishbowl2013.5.FDB";
USERNAME="sysdba";
PASSWORD="habcabom";

sudo $FIREBIRDISQL -user $USERNAME -password $PASSWORD  -i ../sql/table_comment.sql   $DATABASEPATH

