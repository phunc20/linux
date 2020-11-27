- [https://wiki.artixlinux.org/Main/Runit](https://wiki.artixlinux.org/Main/Runit)


```bash
[phunc20@homography-x220t ~]$ ls /etc/init.d/
ninfod.sh
[phunc20@homography-x220t ~]$ #ls /etc/init.d/e
[phunc20@homography-x220t ~]$ echo $SVDIR

[phunc20@homography-x220t ~]$ ls /etc/runit/
1  2  3  ctrlaltdel  reboot  runsvdir  stopit  sv
[phunc20@homography-x220t ~]$ ls /etc/runit/runsvdir/
current  default  single
[phunc20@homography-x220t ~]$ ls /etc/runit/sv/
agetty-console  agetty-tty1  agetty-tty4  agetty-ttyAMA0  alsa        dbus     udevd
agetty-generic  agetty-tty2  agetty-tty5  agetty-ttyS0    bluetoothd  elogind
agetty-serial   agetty-tty3  agetty-tty6  agetty-ttyUSB0  connmand    sulogin
[phunc20@homography-x220t ~]$ ls /etc/runit/sv/bluetoothd/
run  supervise
[phunc20@homography-x220t ~]$ sv status bluetoothd
warning: bluetoothd: unable to open supervise/ok: access denied
[phunc20@homography-x220t ~]$ sudo sv status bluetoothd
run: bluetoothd: (pid 902) 17417s
[phunc20@homography-x220t ~]$
```

## How to turn off `espeak`?
Use `sv` as follows.

```bash
[phunc20@homography-x220t ~]$ sudo sv status espeakup
run: espeakup: (pid 960) 214s
[phunc20@homography-x220t ~]$ sudo sv stop espeakup
ok: down: espeakup: 1s, normally up
```


## Docker in `runit`
```bash
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ pacman -S docker-runit
resolving dependencies...
looking for conflicting packages...

Packages (5) bridge-utils-1.7-1  containerd-1.4.1-1  docker-1:19.03.13-1  runc-1.0.0rc92-1  docker-runit-20180314-3

Total Download Size:     4.62 MiB
Total Installed Size:  372.49 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...

 docker-1:19.03.13-1-x86_64                     4.6 MiB  1963 KiB/s 00:02 [#########################################] 100%
 docker-runit-20180314-3-any                    2.6 KiB   115 KiB/s 00:00 [#########################################] 100%
(5/5) checking keys in keyring                                            [#########################################] 100%
(5/5) checking package integrity                                          [#########################################] 100%
(5/5) loading package files                                               [#########################################] 100%
(5/5) checking for file conflicts                                         [#########################################] 100%
(5/5) checking available disk space                                       [#########################################] 100%
:: Processing package changes...
(1/5) installing bridge-utils                                             [#########################################] 100%
(2/5) installing runc                                                     [#########################################] 100%
(3/5) installing containerd                                               [#########################################] 100%
(4/5) installing docker                                                   [#########################################] 100%
Optional dependencies for docker
    btrfs-progs: btrfs backend support
    pigz: parallel gzip compressor support
(5/5) installing docker-runit                                             [#########################################] 100%
:: Running post-transaction hooks...
(1/2) Creating system user accounts...
Creating group docker with gid 978.
(2/2) Displaying runit service help ...
        ==> Add a service:
        ln -s /etc/runit/sv/<service> /run/runit/service/
        ==> Start/stop/restart a service:
        sv <start/stop/restart> <service>
(youtube-dl) [phunc20@homography-x220t nyu-dl]$
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ ln -s /etc/runit/sv/docker/
log/ run
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ ln -s /etc/runit/sv/docker/
log/ run
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ ln -s /etc/runit/sv/docker/
log/ run
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ ll /etc/runit/sv/
total 80
drwxr-xr-x 3 root root 4096 Aug 16 07:24 elogind
drwxr-xr-x 3 root root 4096 Aug 16 07:24 dbus
drwxr-xr-x 3 root root 4096 Aug 16 07:24 connmand
drwxr-xr-x 3 root root 4096 Aug 16 07:24 udevd
drwxr-xr-x 2 root root 4096 Aug 17 07:54 alsa
drwxr-xr-x 2 root root 4096 Oct  2 16:56 sulogin
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-ttyUSB0
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-ttyS0
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-ttyAMA0
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-tty6
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-tty5
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-tty4
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-tty3
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-tty2
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-tty1
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-serial
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-generic
drwxr-xr-x 2 root root 4096 Oct  2 16:56 agetty-console
drwxr-xr-x 3 root root 4096 Nov  9 23:03 bluetoothd
drwxr-xr-x 3 root root 4096 Nov 11 18:15 docker
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ ls /run/runit/service
agetty-tty1  agetty-tty2  agetty-tty3  agetty-tty4  agetty-tty5  agetty-tty6  bluetoothd  connmand  dbus  elogind  udevd
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ ln -s /etc/runit/sv/docker /run/runit/service/
ln: failed to create symbolic link '/run/runit/service/docker': Permission denied
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ sudo ln -s /etc/runit/sv/docker /run/runit/service/
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ ls /run/runit/service
agetty-tty1  agetty-tty3  agetty-tty5  bluetoothd  dbus    elogind
agetty-tty2  agetty-tty4  agetty-tty6  connmand    docker  udevd
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ sv start docker
warning: docker: unable to open supervise/ok: access denied
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ sudo sv start docker
ok: run: docker: (pid 19033) 28s
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ docker
docker        dockerd       docker-init   docker-proxy
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ docker
docker        dockerd       docker-init   docker-proxy
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ docker image ls
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.40/images/json": dial unix /var/run/docker.sock: connect: permission denied
(youtube-dl) [phunc20@homography-x220t nyu-dl]$ sudo docker image ls
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
(youtube-dl) [phunc20@homography-x220t nyu-dl]$
```
