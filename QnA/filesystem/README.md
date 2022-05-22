# Filesystems


### Mounted Devices
> Q1: How to see the filesystems of each mounted devices (vfat, ext4, ntfs, etc.)?

The `mount` command w/o any arg can help show this information. For example,
```bash
~ ❯❯❯ mount | grep "/dev/sd[bc]"
/dev/sdc2 on /run/media/phunc20/S-B type vfat (rw,nosuid,nodev,relatime,uid=1000,gid=1000,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,showexec,utf8,flush,errors=remount-ro,uhelper=udisks2)
/dev/sdb1 on /run/media/phunc20/59ceb6b6-9192-4f8d-8664-7693de56bcc3 type ext4 (rw,nosuid,nodev,relatime,seclabel,errors=remount-ro,uhelper=udisks2)

~ ❯❯❯ lsblk
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

**A better way** is to use `lsblk` with option `--fs`:
```bash
~ ❯❯❯ lsblk --fs
NAME     FSTYPE FSVER LABEL UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
sda
├─sda1   ext4   1.0         82e5ffa6-127e-45b6-aa32-80b480202c31  382.3M    13% /boot
├─sda2   swap   1           bc487b7c-6ea0-4387-a04c-a00103c3f882                [SWAP]
├─sda3   ext4   1.0         604e36ba-36ec-4e13-b34e-31f4afad2a3d    8.7G    69% /
└─sda4   ext4   1.0         c091fc51-c1d3-482c-ab4b-26252d120540   45.9G    84% /home
mmcblk0
└─mmcblk0p1
         vfat   FAT32       6532-3564
```


> Q2: How to change a device's filesystem?

Use the commands `mkfs.vfat, mkfs.ext4, mkfs.ntfs`, etc. Note that these commands require `sudo` and
some of them (e.g. `mkfs.ntfs`) may take long.
