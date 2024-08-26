```bash
$ mkdir /tmp/seagate
$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sdb      8:16   0 931.5G  0 disk 
├─sdb1   8:17   0   200M  0 part 
└─sdb2   8:18   0 931.2G  0 part /tmp/seagate
$ sudo mount -o gid=$(id -g),uid=$(id -u) /dev/sdb2 /tmp/seagate/
$ ls -dl /tmp/seagate
drwxr-xr-x 24 phunc20 wheel 32768 Jan  1  1970 /tmp/seagate/
```
