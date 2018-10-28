#!/bin/bash
source /home/josselin/.bashrc
s3cmd sync $largedisk/archive/ s3://jmahe --server-side-encryption &>> /home/josselin/backupscriptlogs.txt
