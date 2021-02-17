#!/bin/sh
userName=$(whoami)
backupSrc="/c/Users/$userName/AppData/LocalLow/IronGate/Valheim/"
backupDst="/c/Users/$userName/Desktop/ValheimBackup/$(date +"%d-%m-%Y-%T")"

echo "checking if $backupDst already exists"
if [ ! -d $backupDst ]; then
    echo "creating folder $backupDst"
    mkdir -p $backupDst;
    echo "copying valheim backups from $backupSrc to $backupDst"
    cp -r $backupSrc $backupDst;
fi