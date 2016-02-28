#!/bin/bash

SRCDIR="/home/matt/"
BASEDESTDIR="/mnt/Backup"
EXCLUDELIST="/home/matt/mjl-backup-exclusions"
NEWDIRNAME="$(date +"%Y-%m-%d")/"
DIRCOUNT="$(find /mnt/Backup -mindepth 1 -maxdepth 1 -type d | wc -l)"
DIRLIMIT=3

if [[ $DIRCOUNT -ge $DIRLIMIT ]]
then
	echo "There are $DIRCOUNT backups already on this drive. Change drives before continuing."
	exit 0
else
	mkdir -p $NEWDIRNAME
	rsync -av -P --stats --human-readable --exclude-from=$EXCLUDELIST $SRCDIR $BASEDESTDIR/$NEWDIRNAME | pv -lep -s 3838
fi