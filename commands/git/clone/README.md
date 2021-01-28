





## Not only remote but also local
<code>git clone</code> could clone not only a remote directory, like one from github, but also locally in your own machine, from one directory to another.
This is more easily understood by an example, so
<pre>
[phunc20@artichaut-x220 pgrep]$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 465.8G  0 disk
└─sda1   8:1    0 465.8G  0 part /home/phunc20/samsung-SATA
sdb      8:16   0 447.1G  0 disk
├─sdb1   8:17   0     1M  0 part
├─sdb2   8:18   0    30G  0 part /
├─sdb3   8:19   0    24G  0 part [SWAP]
└─sdb4   8:20   0 393.1G  0 part /home
sdc      8:32   0 931.5G  0 disk
└─sdc1   8:33   0 931.5G  0 part
[phunc20@artichaut-x220 pgrep]$ mou /dev/sdc1 $red/
[phunc20@artichaut-x220 pgrep]$ cd $red/backup/common/datasets/food-on-table
[phunc20@artichaut-x220 food-on-table]$ ls
gogi  heo-iberico
[phunc20@artichaut-x220 food-on-table]$ cd gogi/
[phunc20@artichaut-x220 gogi]$ ls
00000002210000000.mp4  00000002266000000.mp4  00000002326000000.mp4  00000002359000000.mp4
00000002240000000.mp4  00000002280000000.mp4  00000002330000000.mp4  00000002390000000.mp4
00000002242000000.mp4  00000002319000000.mp4  00000002343000000.mp4
[phunc20@artichaut-x220 gogi]$ git clone ~/samsung-SATA/datasets/food-on-table/
Cloning into 'food-on-table'...
done.
[phunc20@artichaut-x220 gogi]$ ls
00000002210000000.mp4  00000002266000000.mp4  00000002326000000.mp4  00000002359000000.mp4
00000002240000000.mp4  00000002280000000.mp4  00000002330000000.mp4  00000002390000000.mp4
00000002242000000.mp4  00000002319000000.mp4  00000002343000000.mp4  food-on-table
[phunc20@artichaut-x220 gogi]$ cd food-on-table/
[phunc20@artichaut-x220 food-on-table]$ ls
gogi
[phunc20@artichaut-x220 food-on-table]$ tree
.
└── gogi
    ├── 01_cut-frame.sh
    ├── 02_accidentally-delete-file.md
    ├── 03_test-corners.ipynb
    ├── 04_begin-crop.ipynb
    └── table_corners.py

1 directory, 5 files
[phunc20@artichaut-x220 food-on-table]$ git log
commit cf633664af8cf3bd0ad348af41498e31e84d724c (HEAD -> master, origin/master, origin/HEAD)
Author: phunc20 <mupen64@gmail.com>
Date:   Tue Aug 4 17:34:20 2020 +0700

    finish testing corner, about to start train/val/test construction

commit 9c73b5c744e116af39530612494733e0c79987d4
Author: phunc20 <mupen64@gmail.com>
Date:   Mon Aug 3 17:14:42 2020 +0700

    T2 first day of data collection
</pre>




