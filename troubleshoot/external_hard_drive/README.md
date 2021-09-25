### Windows-Type External Drive
Solution first: If you meet the following problem, then install `ntfs-3g` (as of year 2021), e.g. on Arch Linux
```bash
$ pacman -S ntfs-3g
```

```bash
$ mou /dev/sdc1 /mnt/
mount: /mnt: unknown filesystem type 'ntfs'.
```
This is what you would see when you try to mount external drives from Windows.
Another way to check the filesystem is to use `fdisk`:

```bash
$ sudo fdisk /dev/sdc

Welcome to fdisk (util-linux 2.37.2).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.


Command (m for help): p
Disk /dev/sdc: 931.48 GiB, 1000170586112 bytes, 1953458176 sectors
Disk model: My Passport 25E9
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 1F4C430A-3CA5-4CE1-82A8-8D2EBF4E18B4

Device     Start        End    Sectors   Size Type
/dev/sdc1   2048 1953456127 1953454080 931.5G Microsoft basic data

Command (m for help): q
```



