#!/bin/bash
# Author: Israel Lopez
# Created: 7/1/2013
# This generates the SchemaSpy documentation for the Fishbowl Inventory Database
SCHEMASPYPATH="/opt/jars/schemaspy/schemaSpy_5.0.0.jar";
JAVAPATH="java";
DATABASEPATH="/home/ilopez/git/fishbowldatadictionary/data/Fishbowl2013.5.FDB";
HOST="localhost:3050"; 
USERNAME="sysdba";
PASSWORD="habcabom";
OUTPUTDIRECTORY="../dictionary/"
DRIVER="/opt/jars/jaybird/jaybird-full-2.2.3.jar";
SCHEMADESC="Community Fishbowl Inventory Data Dictionary";

$JAVAPATH -jar $SCHEMASPYPATH -t firebird -db $DATABASEPATH -host $HOST -u $USERNAME -p $PASSWORD -o $OUTPUTDIRECTORY -dp $DRIVER -norows -desc $SCHEMADESC ;

