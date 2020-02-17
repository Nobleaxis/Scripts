#!/bin/bash

#This script is to take the full backup of users home directory.
#Defining the variables
DATE=$(date +%Y-%m-%d-%H%M%S)
BACKUP_DIR=/Backup
SOURCE=/home/$USER

#The snapshot file is important beacuse, it keeps track of modified and new files and take backup of them.
TIMESTAMP=snapshot.txt


#cd /
mkdir /Backup
cd /Backup

#command
tar -cvzpf $BACKUP_DIR/$USER-$DATE.tar.gz -g $TIMESTAMP $SOURCE


##hfkd
