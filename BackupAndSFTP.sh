

# back up Mysql
mysqldump -A > all_databases.sql -u root -proot -h localhost

# restore Mysql
# mysql <all_databases.sql -u root -proot


# backup Web File
# '--exclude' could skip dir you don't want to back up
sudo tar cvpzf backup.tgz /var/www/



#end
exit 0
