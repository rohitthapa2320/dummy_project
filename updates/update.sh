cd ~/dummy_server/www/dummy_project/updates/
echo "------------ NEW RUN -------------- $(date -u)" >> processed/update.log

# UPDATE SCRIPT GOES HERE !!!

# POST UPDATE CLEANUP
mv $0 processed
