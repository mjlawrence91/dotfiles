#!/bin/bash
SCRIPTSDIR="$HOME/.scripts/backup"
WHITELIST="$SCRIPTSDIR/mjl-backup-whitelist"
BLACKLIST="$SCRIPTSDIR/mjl-backup-blacklist"
BACKUPLOGNAME="Last backed up $(date +"%Y-%m-%d")"

SRCDIR="/mnt/"
BASEDESTDIR="/mnt/Backup"

rm -rfv ./*
rsync -av -P --stats --human-readable --include-from=$WHITELIST --exclude-from=$BLACKLIST $SRCDIR $BASEDESTDIR | pv -lep -s 3838
touch $BASEDESTDIR/$BACKUPLOGNAME.txt
echo $BACKUPLOGNAME > $BASEDESTDIR/$BACKUPLOGNAME.txt

# NEWDIRNAME="$(date +"%Y-%m-%d")/"

# Get number of directories in /mnt/Backup
# DIRCOUNT="$(find $BASEDESTDIR -mindepth 1 -maxdepth 1 -type d | wc -l)"
# DIRLIMIT=3

# if [[ $DIRCOUNT -ge $DIRLIMIT ]]
# then
	# echo "There are $DIRCOUNT backups already on this drive. Change drives before continuing."
	# echo "There is a backup already present on this drive. Change drives before continuing."
	# exit 0
# else
	# mkdir -p $BASEDESTDIR/$NEWDIRNAME
	# rsync -av -P --stats --human-readable --exclude-from=$BLACKLIST $SRCDIR $BASEDESTDIR/$NEWDIRNAME | pv -lep -s 3838
	# rsync -av -P --stats --human-readable --include-from=$WHITELIST --exclude-from=$BLACKLIST $SRCDIR $BASEDESTDIR/$NEWDIRNAME | pv -lep -s 3838
# fi
