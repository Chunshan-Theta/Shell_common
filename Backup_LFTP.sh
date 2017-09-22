
#備份部份
#cd /home  #base dir for put file

ID=20$(date +"%y_%m_%dv%I_%M_%S")

# back up Mysql
mysqldump -A > /home/.../${ID}all_databases.sql -u USERNAME -pPASSWORD -h localhost
#-p需與密碼相連
# restore Mysql
#mysql <all_databases.sql -u root -pWulab35415


# backup Web File
# '--exclude' could skip dir you don't want to back up
echo "PassWord" | sudo -S tar cvpzf /home/.../${ID}backup.tgz /var/www/

# 傳送部份

HOST=140.....
USER=.....	
PASSWD=.....
TargetDir=/home/..... #Target dir for put file
echo $ID

lftp<<END_SCRIPT

open sftp://$HOST
set sftp:auto-confirm yes
user $USER $PASSWD
cd $TargetDir
put /home/.../${ID}all_databases.sql
put /home/.../${ID}backup.tgz

END_SCRIPT
#end

exit 0
