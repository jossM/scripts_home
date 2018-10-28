#!/bin/bash
source ~/.bashrc

shopt -s lastpipe
date +'%Y-%m-%d %H:%M' |
	read date_backup hm
echo $hm |
	IFS=: read heure_backup x
s3cmd sync $largedisk/archive/ s3://jmahe --server-side-encryption &>> ~/backupscript_logs/$date_backup-$hm.log

who -r |
	read x x x date_boot hm
echo $hm |
	IFS=: read heure_boot x

if [[ $date_boot = $date_backup && $heure_boot = 04 && $heure_backup = 04 ]] ;then
	echo "Arret systeme" >&2
	shutdown
else
	echo "Lancement manuel: pas d'arret systeme" >&2
fi
