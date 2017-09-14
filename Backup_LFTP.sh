#cd /home  #base dir for put file

ID=20$(date +"%y_%m_%dv%I_%M_%S")

# back up Mysql
mysqldump -A > ${ID}all_databases.sql -u USER -pPASSWORD -h localhost
# restore Mysql
#mysql <all_databases.sql -u root -pWulab35415


# backup Web File
# '--exclude' could skip dir you don't want to back up
sudo tar cvpzf ${ID}backup.tgz /var/www/


HOST=IPADRESS
USER=USER
PASSWD=PASSWORD
TargetDir=/home/BackupOfWuLAB/126_15 #Target dir for put file
echo $ID

lftp<<END_SCRIPT

open sftp://$HOST
set sftp:auto-confirm yes
user $USER $PASSWD
cd $TargetDir
put ${ID}all_databases.sql
put ${ID}backup.tgz

END_SCRIPT
#end

exit 0
