#!/bin/bash
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>processed/deploy.log 2>&1
# Everything below will go to the file 'processed/deploy.log ':

cd ~/dummy_server/www/dummy_project
echo "------------ NEW RUN -------------- $(date -u) "
echo "  $(who)" 
echo "  $(pwd)" 
git pull 
git checkout master 

echo "CURL TO CLOSE" 
curl http://localhost:3000/close

echo "STAT= $(stat -c '%A' 'updates/update.sh')" 
echo "STAT_VALUE= $([ -f "${updates/update.sh}" ] && [ -r "${updates/update.sh}" ] && [ -x "${updates/update.sh}" ])"
if [ -f "updates/update.sh" ] && [ -r "updates/update.sh" ] && [ -x "updates/update.sh" ] ; then
    echo "UPDATE SCRIPT"
    ./updates/update.sh
    git add .
    git commit -m "Automatic Update"
    git push -u
    echo "-------------DONE WITH UPDATES ---------------"
fi


npm install
node index.js &

