cd ~/dummy_server/www/dummy_project/updates/
echo "------------ UPDATE.SH RUN -------------- $(date -u)" >> processed/update.log
echo "  $(who)"
# UPDATE SCRIPT GOES HERE !!!

# POST UPDATE CLEANUP
mv $0 processed
