01. Establish Internet connection
    - Either the wifi by <code><b>wifi-menu</b></code>
    - or the Ethernet by <b>connecting Ethernet cable</b>, <b><code>dhcpcd enp1s0</code></b>, etc.
    - The connection can be verified, for example, by <code>ping archlinux.org</code>
02. (Optional) <code><b>ssh</b></code> connection: This has at least two benefits that I can think of
    - Like what I am doing now, <code><b>ssh</b></code> connection allows us to take note or even to record every installation steps we take
    - It's <b>easier and more comfortable</b> to type on a fully equiped machine; besides, there is <b>graphical browser</b> which allows to consult the Internet when we forgot one of the installation steps.
    - From this point on, we shall call the machine on which we are installing arch 32-bit <b>machineA</b> and the ssh-client machine <b>machineB</b>
    - To establish the ssh connection, on <b>machineA</b> do <code><b>systemctl start sshd.service</b></code>
    - Then find out the ip of <b>machineA</b> by <code>ip -br a</code> or by <code>ifconfig</code>
    - On <b>machineB</b>, say the ip in the previous step was <code><b>192.168.3.109</b></code>, then type in a terminal <code><b>ssh root@192.168.3.109</b></code>. There is still one thing you need to do, that is, **set the password for `root` on machineA** with which you can ssh into it: Do **`passwd`** on **machineA** and set any password you like.
03. Ensure the system clock is accurate by <code><b>timedatectl set-ntp true</b></code>
    ```bash
    root@archiso ~ # timedatectl status
                   Local time: Sat 2020-10-10 00:56:31 UTC
               Universal time: Sat 2020-10-10 00:56:31 UTC
                     RTC time: Sat 2020-10-10 00:56:30
                    Time zone: UTC (UTC, +0000)
    System clock synchronized: no
                  NTP service: inactive
              RTC in local TZ: no
    root@archiso ~ # timedatectl set-ntp true
    root@archiso ~ # timedatectl status
                   Local time: Sat 2020-10-10 00:56:40 UTC
               Universal time: Sat 2020-10-10 00:56:40 UTC
                     RTC time: Sat 2020-10-10 00:56:40
                    Time zone: UTC (UTC, +0000)
    System clock synchronized: yes
                  NTP service: active
              RTC in local TZ: no
    ```
04. Partition the disks: Use, say `fdisk`, to make partitions like below (a `128GB`-SSD example)
```bash
Device     Boot    Start       End   Sectors  Size Id Type
/dev/sda1           2048    411647    409600  200M 83 Linux
/dev/sda2         411648   4605951   4194304    2G 82 Linux swap / Solaris
/dev/sda3        4605952  57034751  52428800   25G 83 Linux
/dev/sda4       57034752 234441647 177406896 84.6G 83 Linux
```
    - **N.B.** It seems that 32-bit machine can only use up to `2GB` swap space -- It makes no sense to assign more than that.
05. Create filesystem on the partitions
    - `mkfs.ext4` for all partitions except for the swap partition
       ```bash
       # Continuing on the previous example (128GB-SSD)
       mkfs.ext4 /dev/sda4
       mkfs.ext4 /dev/sda3
       mkfs.ext4 /dev/sda1
       ```
    - `mkswap` for the swap partition
       ```bash
       mkswap /dev/sda2
       ```
06. Mount the devices
```
root@archiso ~ # lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 560.8M  1 loop /run/archiso/sfs/airootfs
sda      8:0    0 111.8G  0 disk
├─sda1   8:1    0   200M  0 part
├─sda2   8:2    0     2G  0 part
├─sda3   8:3    0    25G  0 part
└─sda4   8:4    0  84.6G  0 part
sdb      8:16   1  14.5G  0 disk
├─sdb1   8:17   1   673M  0 part /run/archiso/bootmnt
└─sdb2   8:18   1    64M  0 part
sr0     11:0    1  1024M  0 rom
root@archiso ~ # swapon /dev/sda2
root@archiso ~ # lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 560.8M  1 loop /run/archiso/sfs/airootfs
sda      8:0    0 111.8G  0 disk
├─sda1   8:1    0   200M  0 part
├─sda2   8:2    0     2G  0 part [SWAP]
├─sda3   8:3    0    25G  0 part
└─sda4   8:4    0  84.6G  0 part
sdb      8:16   1  14.5G  0 disk
├─sdb1   8:17   1   673M  0 part /run/archiso/bootmnt
└─sdb2   8:18   1    64M  0 part
sr0     11:0    1  1024M  0 rom
root@archiso ~ # mount /dev/sda3 /mnt
root@archiso ~ # mkdir -p /mnt/{boot,home}
root@archiso ~ # mount /dev/sda4 /mnt/home
root@archiso ~ # mount /dev/sda1 /mnt/boot
root@archiso ~ # lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 560.8M  1 loop /run/archiso/sfs/airootfs
sda      8:0    0 111.8G  0 disk
├─sda1   8:1    0   200M  0 part /mnt/boot
├─sda2   8:2    0     2G  0 part [SWAP]
├─sda3   8:3    0    25G  0 part /mnt
└─sda4   8:4    0  84.6G  0 part /mnt/home
sdb      8:16   1  14.5G  0 disk
├─sdb1   8:17   1   673M  0 part /run/archiso/bootmnt
└─sdb2   8:18   1    64M  0 part
sr0     11:0    1  1024M  0 rom
```
07. change the mirror list (`/etc/pacman.d/mirrorlist`) so that future downloading of packages will be faster: Rearrange those urls to have closer locations higher in the text file.
    ```bash
    root@archiso ~ # vim /etc/pacman.d/mirrorlist
    root@archiso ~ # cat /etc/pacman.d/mirrorlist
    ##
    ## Arch Linux 32 repository mirrorlist
    ## Generated on 2020-10-31
    ##
    
    ## United States
    Server = https://32.arlm.tyzoid.com/$arch/$repo/
    Server = http://mirror.clarkson.edu/archlinux32/$arch/$repo/
    Server = https://mirror.clarkson.edu/archlinux32/$arch/$repo/
    
    ## France
    Server = http://archlinux32.agoctrl.org/$arch/$repo/
    Server = https://archlinux32.agoctrl.org/$arch/$repo/
    
    ## Germany
    Server = http://de.mirror.archlinux32.org/$arch/$repo/
    Server = https://de.mirror.archlinux32.org/$arch/$repo/
    Server = http://mirror.archlinux32.org/$arch/$repo/
    Server = https://mirror.archlinux32.org/$arch/$repo/
    Server = http://mirror.archlinux32.oss/$arch/$repo/
    
    ## Greece
    Server = http://gr.mirror.archlinux32.org/$arch/$repo/
    
    ## Russia
    Server = http://mirror.yandex.ru/archlinux32/$arch/$repo/
    Server = https://mirror.yandex.ru/archlinux32/$arch/$repo/
    
    ## Switzerland
    Server = http://archlinux32.andreasbaumann.cc/$arch/$repo/
    Server = https://archlinux32.andreasbaumann.cc/$arch/$repo/
    root@archiso ~ #
    ```
07. `pacstrap /mnt base base-devel linux linux-firmware neovim man-db man-pages texinfo`
08. `genfstab`
    ```bash
    root@archiso ~ # genfstab -U /mnt
    # /dev/sda3
    UUID=7f7a09f6-c173-4d36-ab10-dff70b2781e5       /               ext4            rw,relatime     0 1
    
    # /dev/sda4
    UUID=8c86b565-03dc-4315-93da-e1e3cfb4dd27       /home           ext4            rw,relatime     0 2
    
    # /dev/sda1
    UUID=70a03518-a0ff-4aaf-af61-4e8c4965f561       /boot           ext4            rw,relatime     0 2
    
    # /dev/sda2
    UUID=e0358750-ef16-4ddf-b88a-ab72caa9dce4       none            swap            defaults        0 0
    
    root@archiso ~ # cat /etc/fstab
    root@archiso ~ # cat /etc/fstab
    root@archiso ~ # cat /mnt/etc/fstab
    # Static information about the filesystems.
    # See fstab(5) for details.
    
    # <file system> <dir> <type> <options> <dump> <pass>
    root@archiso ~ # genfstab -U /mnt >> /mnt/etc/fstab
    root@archiso ~ # cat /mnt/etc/fstab
    # Static information about the filesystems.
    # See fstab(5) for details.
    
    # <file system> <dir> <type> <options> <dump> <pass>
    # /dev/sda3
    UUID=7f7a09f6-c173-4d36-ab10-dff70b2781e5       /               ext4            rw,relatime     0 1
    
    # /dev/sda4
    UUID=8c86b565-03dc-4315-93da-e1e3cfb4dd27       /home           ext4            rw,relatime     0 2
    
    # /dev/sda1
    UUID=70a03518-a0ff-4aaf-af61-4e8c4965f561       /boot           ext4            rw,relatime     0 2
    
    # /dev/sda2
    UUID=e0358750-ef16-4ddf-b88a-ab72caa9dce4       none            swap            defaults        0 0
    ```
09. `arch-chroot /mnt`
10. Time zone and hardware clock
    ```bash
[root@archiso /]# ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
[root@archiso /]# cat /etc/adjtime
cat: /etc/adjtime: No such file or directory
[root@archiso /]# hwclock --systohc
[root@archiso /]# cat /etc/adjtime
0.000000 1606119884 0.000000
1606119884
UTC
    ```
11. Localization
    ```bash
    [root@archiso /]# grep "^[^#]" /etc/locale.gen
    [root@archiso /]# nvim /etc/locale.gen
    [root@archiso /]# locale-gen
    Generating locales...
      en_US.UTF-8... done
    Generation complete.
    [root@archiso /]# grep "^[^#]" /etc/locale.gen
    en_US.UTF-8 UTF-8
    [root@archiso /]#
    ```
12. Network config
    ```bash
    [root@archiso /]# cat /etc/hostname
    pluie-t60
    [root@archiso /]# cat /etc/host
    cat: /etc/host: No such file or directory
    [root@archiso /]# cat /etc/hosts
    # Static table lookup for hostnames.
    # See hosts(5) for details.
    127.0.0.1       localhost
    ::1     localhost
    127.0.1.1       pluie-t60.localdomain   pluie-t60
    ```
13. `passwd`
14. wifi: Install and enable `NetworkManager` (Pay **attention to the camel case**)
    ```bash
    [root@archiso /]# pacman -S networkmanager
    [root@archiso /]# systemctl status networkmanager
    Running in chroot, ignoring request: status
    [root@archiso /]# systemctl status NetworkManager
    Running in chroot, ignoring request: status
    [root@archiso /]# systemctl enable networkmanager
    Failed to enable unit, unit networkmanager.service does not exist.
    [root@archiso /]# systemctl enable NetworkManager
    Created symlink /etc/systemd/system/multi-user.target.wants/NetworkManager.service → /usr/lib/systemd/system/NetworkManager.service.
    Created symlink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service → /usr/lib/systemd/system/NetworkManager-dispatcher.service.
    Created symlink /etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service → /usr/lib/systemd/system/NetworkManager-wait-online.service.
    [root@archiso /]#
    ```
15. `grub`
    ```bash
    [root@archiso /]# pacman -S grub
    resolving dependencies...
    looking for conflicting packages...
    
    Packages (1) grub-2:2.04-8.0
    
    Total Download Size:    6.31 MiB
    Total Installed Size:  29.34 MiB
    
    :: Proceed with installation? [Y/n]
    :: Retrieving packages...
     grub-2:2.04-8.0-pentium4                                                     6.3 MiB   380 KiB/s 00:17 [#############################################################] 100%
    (1/1) checking keys in keyring                                                                          [#############################################################] 100%
    (1/1) checking package integrity                                                                        [#############################################################] 100%
    (1/1) loading package files                                                                             [#############################################################] 100%
    (1/1) checking for file conflicts                                                                       [#############################################################] 100%
    (1/1) checking available disk space                                                                     [#############################################################] 100%
    :: Processing package changes...
    (1/1) installing grub                                                                                   [#############################################################] 100%
    Generate your bootloader configuration with:
      grub-mkconfig -o /boot/grub/grub.cfg
    Optional dependencies for grub
        freetype2: For grub-mkfont usage
        fuse2: For grub-mount usage
        dosfstools: For grub-mkrescue FAT FS and EFI support
        efibootmgr: For grub-install EFI support
        libisoburn: Provides xorriso for generating grub rescue iso using grub-mkrescue
        os-prober: To detect other OSes when generating grub.cfg in BIOS systems
        mtools: For grub-mkrescue FAT FS support
    :: Running post-transaction hooks...
    (1/2) Arming ConditionNeedsUpdate...
    (2/2) Updating the info directory file...
    [root@archiso /]# lsblk
    NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
    loop0    7:0    0 560.8M  1 loop
    sda      8:0    0 111.8G  0 disk
    ├─sda1   8:1    0   200M  0 part /boot
    ├─sda2   8:2    0     2G  0 part [SWAP]
    ├─sda3   8:3    0    25G  0 part /
    └─sda4   8:4    0  84.6G  0 part /home
    sdb      8:16   1  14.5G  0 disk
    ├─sdb1   8:17   1   673M  0 part
    └─sdb2   8:18   1    64M  0 part
    sr0     11:0    1  1024M  0 rom
    [root@archiso /]# grub-install --target=i386-pc /dev/sda
    Installing for i386-pc platform.
    Installation finished. No error reported.
    [root@archiso /]# grub-mkconfig -o /boot/grub/grub.cfg
    Generating grub configuration file ...
    Found linux image: /boot/vmlinuz-linux
    Found initrd image: /boot/initramfs-linux.img
    Found fallback initrd image(s) in /boot: initramfs-linux-fallback.img
    done
    [root@archiso /]#
    ```
16. `umount`
```bash
[root@archiso /]# exit
exit
arch-chroot /mnt  15.96s user 6.94s system 1% cpu 19:56.70 total
root@archiso ~ # lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 560.8M  1 loop /run/archiso/sfs/airootfs
sda      8:0    0 111.8G  0 disk
├─sda1   8:1    0   200M  0 part /mnt/boot
├─sda2   8:2    0     2G  0 part [SWAP]
├─sda3   8:3    0    25G  0 part /mnt
└─sda4   8:4    0  84.6G  0 part /mnt/home
sdb      8:16   1  14.5G  0 disk
├─sdb1   8:17   1   673M  0 part /run/archiso/bootmnt
└─sdb2   8:18   1    64M  0 part
sr0     11:0    1  1024M  0 rom
root@archiso ~ # umount -R /mnt
root@archiso ~ # lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 560.8M  1 loop /run/archiso/sfs/airootfs
sda      8:0    0 111.8G  0 disk
├─sda1   8:1    0   200M  0 part
├─sda2   8:2    0     2G  0 part [SWAP]
├─sda3   8:3    0    25G  0 part
└─sda4   8:4    0  84.6G  0 part
sdb      8:16   1  14.5G  0 disk
├─sdb1   8:17   1   673M  0 part /run/archiso/bootmnt
└─sdb2   8:18   1    64M  0 part
sr0     11:0    1  1024M  0 rom
```
17. `reboot` and **done**
