# Filesystems


### Mounted Devices
> Q1: How to see the filesystems of each mounted devices (vfat, ext4, ntfs, etc.)?

The `mount` command w/o any arg can help show this information. For example,
```bash
[phunc20@fedora ~]$ mount | grep "/dev/sd[bc]"
/dev/sdc2 on /run/media/phunc20/S-B type vfat (rw,nosuid,nodev,relatime,uid=1000,gid=1000,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,showexec,utf8,flush,errors=remount-ro,uhelper=udisks2)
/dev/sdb1 on /run/media/phunc20/59ceb6b6-9192-4f8d-8664-7693de56bcc3 type ext4 (rw,nosuid,nodev,relatime,seclabel,errors=remount-ro,uhelper=udisks2)

[phunc20@fedora ~/git-repos/phunc20/linux/QnA/filesystem]$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 931.5G  0 disk
├─sda1   8:1    0     1G  0 part /boot
└─sda2   8:2    0 930.5G  0 part /home
sdb      8:16   0 931.5G  0 disk
└─sdb1   8:17   0 931.5G  0 part /run/media/phunc20/59ceb6b6-9192-4f8d-8664-7693de56bcc3
sdc      8:32   0 931.5G  0 disk
├─sdc1   8:33   0   200M  0 part
└─sdc2   8:34   0 931.2G  0 part /run/media/phunc20/S-B
zram0  252:0    0     8G  0 disk [SWAP]
```

As we can see,
- `/dev/sdc2` is `vfat`
- `/dev/sdb1` is `ext4`


> Q2: How to change a device's filesystem?

Use the commands `mkfs.vfat, mkfs.ext4, mkfs.ntfs`, etc. Note that these commands require `sudo` and
some of them (e.g. `mkfs.ntfs`) may take long.
