#!/bin/bash

#This is a script to take incremental backups after a full backup has been made of a users home directory
#You can set a cron job for this scripts to take the backups any moment

#Defining the variables
BACKUP_DIR=/Backup
TIMESTAMP=snapshot.txt
SOURCE=/home/$USER
DATE=$(date +%Y-%m-%d-%H%M%S)
backupnr=$(date +%Y-%m-%d_%H%M%S)
filename=incre-${backupnr}.tar.gz

set -- ${BACKUP_DIR}/backup-??.tar.gz

#command
tar -czpf $BACKUP_DIR/$filename -g $BACKUP_DIR/$TIMESTAMP $SOURCE
