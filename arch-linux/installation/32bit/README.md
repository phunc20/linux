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
    - On <b>machineB</b>, say the ip in the previous step was <code><b>192.168.3.109</b></code>, then type in a terminal <code><b>ssh 192.168.3.109</b></code>. That's it.
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
04. Partition the disks
```bash
root@archiso ~ # lsblk                                                                                     :(
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 534.4M  1 loop /run/archiso/sfs/airootfs
sda      8:0    0 111.8G  0 disk
├─sda1   8:1    0   500M  0 part
├─sda2   8:2    0     6G  0 part
├─sda3   8:3    0    32G  0 part
└─sda4   8:4    0  73.3G  0 part
sdb      8:16   1  14.7G  0 disk /run/archiso/bootmnt
├─sdb1   8:17   1   645M  0 part
└─sdb2   8:18   1    64M  0 part
root@archiso ~ # fdisk /dev/sda

Welcome to fdisk (util-linux 2.34).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.


Command (m for help):
```
05. Create filesystem on the partitions
06. Mount the devices
```
root@archiso ~ # lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 534.4M  1 loop /run/archiso/sfs/airootfs
sda      8:0    0 111.8G  0 disk
├─sda1   8:1    0   500M  0 part
├─sda2   8:2    0     6G  0 part
├─sda3   8:3    0    32G  0 part
└─sda4   8:4    0  73.3G  0 part
sdb      8:16   1  14.7G  0 disk /run/archiso/bootmnt
├─sdb1   8:17   1   645M  0 part
└─sdb2   8:18   1    64M  0 part
root@archiso ~ # swapon /dev/sda2
root@archiso ~ # lsblk



root@archiso ~ # mount /dev/sda3 /mnt
root@archiso ~ # mkdir -p /mnt/{boot,home}
root@archiso ~ # mount /dev/sda4 /mnt/home
root@archiso ~ # mount /dev/sda1 /mnt/boot
root@archiso ~ # lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 534.4M  1 loop /run/archiso/sfs/airootfs
sda      8:0    0 111.8G  0 disk
├─sda1   8:1    0   500M  0 part /mnt/boot
├─sda2   8:2    0     6G  0 part [SWAP]
├─sda3   8:3    0    32G  0 part /mnt
└─sda4   8:4    0  73.3G  0 part /mnt/home
sdb      8:16   1  14.7G  0 disk /run/archiso/bootmnt
├─sdb1   8:17   1   645M  0 part
└─sdb2   8:18   1    64M  0 part
root@archiso ~ #

```
07. > <code><b>pacstrap /mnt base base-devel linux linux-firmware neovim man-db man-pages texinfo</b></code>





