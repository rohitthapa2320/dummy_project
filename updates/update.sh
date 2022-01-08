#!/bin/bash
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>processed/update.log 2>&1
# Everything below will go to the file 'processed/update.log ':
cd ~/dummy_server/www/dummy_project/updates/
echo "------------ UPDATE.SH RUN -------------- $(date -u)"
echo "  $(who)"
# UPDATE SCRIPT GOES HERE !!!

# POST UPDATE CLEANUP
mv update.sh processed
