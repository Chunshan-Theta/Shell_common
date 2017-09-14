cd /home/gavin/backup  #base dir for put file


# back up Mysql
mysqldump -A > all_databases.sql -u root -proot -h localhost
# restore Mysql
mysql <all_databases.sql -u root -proot


# backup Web File
# '--exclude' could skip dir you don't want to back up
sudo tar cvpzf backup.tgz /var/www/

#!/bin/sh
HOST=140.115.126.216
USER=gavin	
PASSWD=gavin
TargetDir=/home/gavin/Desktop/test #Target dir for put file



lftp<<END_SCRIPT
open sftp://$HOST
set sftp:auto-confirm yes
user $USER $PASSWD
cd $TargetDir
put all_databases.sql
put backup.tgz
bye
END_SCRIPT
#end

exit 0
