### cf.
- [https://bbs.archlinux.org/viewtopic.php?id=204366](https://bbs.archlinux.org/viewtopic.php?id=204366)
- [https://bbs.archlinux.org/viewtopic.php?id=103436](https://bbs.archlinux.org/viewtopic.php?id=103436)

#### Long Story Short
<pre>
# say, if you have a usb at /dev/sdb
# and you'd like to erase its content to have it like brand new.
# Rewrite the usb w/ zeros
sudo dd if=/dev/zero of=/dev/sdb bs=8M status=progress
# Create a single partition /dev/sdb1: Choose W95 FAT32 (LBA), which is Linux/Windows compatible and is usually code `c` (If you only use linux, you can also choose Linux)
sudo fdisk /dev/sdb
# Make file system
sudo mkfs -t vfat -F 32 /dev/sdb1
# The previous step might fail because your machine does not have mkfs.vfat yet.
# If that's the case, on arch linux, just install the following package and mkfs again.
sudo pacman -S dosfstools
</pre>


