


pacman -S transmission-runit
ln -s 
sv start
transmission-remote -a https://cdimage.debian.org/debian-cd/current/amd64/bt-dvd/debian-10.7.0-amd64-DVD-1.iso.torrent
[phunc20@homography-x220t ~]$ transmission-remote -l
    ID   Done       Have  ETA           Up    Down  Ratio  Status       Name
     1    35%    1.42 GB  17 min       0.0  2408.0    0.0  Up & Down    debian-10.7.0-amd64-DVD-1.iso
Sum:             1.42 GB               0.0  2408.0
[phunc20@homography-x220t ~]$ watch -n 4 transmission-remote -l
