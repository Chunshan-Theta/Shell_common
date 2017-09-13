
# Output the information about your disk

lsblk
# output of 'lsblk':
#
# Filesystem      Size  Used Avail Use% Mounted on
# udev            2.0G     0  2.0G   0% /dev
# tmpfs           396M   11M  385M   3% /run
# /dev/sda1        32G  8.9G   22G  30% /
# tmpfs           2.0G  193M  1.8G  10% /dev/shm
# tmpfs           5.0M  4.0K  5.0M   1% /run/lock
# tmpfs           2.0G     0  2.0G   0% /sys/fs/cgroup
# tmpfs           396M   52K  396M   1% /run/user/1000
# /dev/sr0         57M   57M     0 100% /media/gavin/ VBOXADDITIONS_5.1.14_112924



df -h
# output of 'df -h':
#
# NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
# sda      8:0    0   32G  0 disk 
# └─sda1   8:1    0   32G  0 part /
# sr0     11:0    1 56.6M  0 rom  /media/gavin/ VBOXADDITIONS_5.1.14_112924

############################

# backup command
# First, you should go to '/' with command 'cd /', if you want to backup complete computer
# '--exclude' could skip dir you don't want to back up
sudo tar cvpzf backup.tgz --exclude=/proc --exclude=/lost+found --exclude=/backup.tgz --exclude=/mnt --exclude=/sys --exclude=/media /


# restore with backup file
# First, you should go to folder that root of backup
sudo tar xvpfz /backup.tgz -C /

#end
exit 0
