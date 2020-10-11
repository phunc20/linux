


```bash
[phunc20@headache-x220tablet ~]$ pacman -Ss yay
community/ruby-yard 0.9.25-1
    YARD is a Ruby Documentation tool. The Y stands for "Yay!"
[phunc20@headache-x220tablet ~]$ pacman -Ss yaourt
galaxy/yaourtix 1.9.r4-2
    Yaourt (= a pacman wrapper with extended features and AUR support) patched with user definable repo-support
    for building from source, and other customizepkg-enhancements. Artix support included.
[phunc20@headache-x220tablet ~]$ pacman -S yaourtix
resolving dependencies...
looking for conflicting packages...

Packages (3) package-query-1.10-1  yajl-2.1.0-3  yaourtix-1.9.r4-2

Total Download Size:   0.17 MiB
Total Installed Size:  0.81 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
error: failed retrieving file 'yajl-2.1.0-3-x86_64.pkg.tar.zst' from mirrors.dotsrc.org : The requested URL returned error: 404
error: failed retrieving file 'yajl-2.1.0-3-x86_64.pkg.tar.zst' from ftp.ntua.gr : The requested URL returned error: 404
error: failed retrieving file 'yajl-2.1.0-3-x86_64.pkg.tar.zst' from artix.wheaton.edu : The requested URL returned error: 404
^Cerror: failed retrieving file 'yajl-2.1.0-3-x86_64.pkg.tar.zst' from mirror.clarkson.edu : The requested URL returned error: 404

Interrupt signal received

[phunc20@headache-x220tablet ~]$ ping google.com
PING google.com (172.217.174.206) 56(84) bytes of data.
64 bytes from hkg07s34-in-f14.1e100.net (172.217.174.206): icmp_seq=1 ttl=56 time=32.9 ms
^C
--- google.com ping statistics ---
2 packets transmitted, 1 received, 50% packet loss, time 1001ms
rtt min/avg/max/mdev = 32.853/32.853/32.853/0.000 ms
[phunc20@headache-x220tablet ~]$ pacman -Sy
:: Synchronizing package databases...
 system                                 224.7 KiB   301 KiB/s 00:01 [#####################################] 100%
 world                                 1405.2 KiB  1756 KiB/s 00:01 [#####################################] 100%
 galaxy                                1327.8 KiB  7.63 MiB/s 00:00 [#####################################] 100%
 extra                                 1643.0 KiB  1339 KiB/s 00:01 [#####################################] 100%
 community                                5.2 MiB  1892 KiB/s 00:03 [#####################################] 100%
[phunc20@headache-x220tablet ~]$ pacman -S yaourtix
resolving dependencies...
looking for conflicting packages...

Packages (3) package-query-1.10-1  yajl-2.1.0-4  yaourtix-1.9.r4-2

Total Download Size:   0.18 MiB
Total Installed Size:  0.83 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
 yajl-2.1.0-4-x86_64                     45.8 KiB   321 KiB/s 00:00 [#####################################] 100%
 package-query-1.10-1-x86_64             26.5 KiB   616 KiB/s 00:00 [#####################################] 100%
 yaourtix-1.9.r4-2-any                  110.8 KiB   292 KiB/s 00:00 [#####################################] 100%
(3/3) checking keys in keyring                                      [#####################################] 100%
(3/3) checking package integrity                                    [#####################################] 100%
(3/3) loading package files                                         [#####################################] 100%
(3/3) checking for file conflicts                                   [#####################################] 100%
(3/3) checking available disk space                                 [#####################################] 100%
:: Processing package changes...
(1/3) installing yajl                                               [#####################################] 100%
(2/3) installing package-query                                      [#####################################] 100%
(3/3) installing yaourtix                                           [#####################################] 100%
Optional dependencies for yaourtix
    aurvote: Vote for your favorite AUR packages.
    git: Retrieve PKGBUILDs from Artix Linux and other repositories. [installed]
    subversion: Retrieve PKGBUILDs from some unofficial user repositories.
    customizepkg: Automatically modify PKGBUILD during install/upgrade.
[phunc20@headache-x220tablet ~]$ #pacman -S yaourtix
[phunc20@headache-x220tablet ~]$ yaourt
yaourt    yaourtix
[phunc20@headache-x220tablet ~]$ man yaourtix
No manual entry for yaourtix
[phunc20@headache-x220tablet ~]$ yaourtix --help
Usage: yaourt <operation> [...]
operations:
        yaourt (search pattern|package file)
        yaourt {-h --help}
        yaourt {-V --version}
        yaourt {-Q --query}       [options] [package(s)]
        yaourt {-R --remove}      [options] <package(s)>
        yaourt {-S --sync}        [options] [package(s)]
        yaourt {-U --upgrade}     [options] <package(s)>
        yaourt {-C}               [options]
        yaourt {-B --backup}      [save directory|restore file]
        yaourt {-G --getpkgbuild} [options] <package(s)>
        yaourt {-P --pkgbuild}    [-i --install] <directory>
        yaourt {--stats}
[phunc20@headache-x220tablet ~]$ yaourtix search brave
[phunc20@headache-x220tablet ~]$ yaourt --help
Usage: yaourt <operation> [...]
operations:
        yaourt (search pattern|package file)
        yaourt {-h --help}
        yaourt {-V --version}
        yaourt {-Q --query}       [options] [package(s)]
        yaourt {-R --remove}      [options] <package(s)>
        yaourt {-S --sync}        [options] [package(s)]
        yaourt {-U --upgrade}     [options] <package(s)>
        yaourt {-C}               [options]
        yaourt {-B --backup}      [save directory|restore file]
        yaourt {-G --getpkgbuild} [options] <package(s)>
        yaourt {-P --pkgbuild}    [-i --install] <directory>
        yaourt {--stats}
[phunc20@headache-x220tablet ~]$ yaourt search brave
[phunc20@headache-x220tablet ~]$ yaourt -Ss brave
aur/brave 1.14.84-1 (50) (4.07)
    A web browser that stops ads and trackers by default
aur/brave-beta-bin 1.16.48-1 (20) (0.53)
    Web browser that blocks ads and trackers by default (beta binary release).
aur/brave-bin 1:1.15.72-1 (299) (13.29)
    Web browser that blocks ads and trackers by default (binary release).
aur/brave-dev-bin 1.16.58-1 (9) (0.03)
    Web browser that blocks ads and trackers by default (dev binary release).
aur/brave-git 0.70.26.g674d3b845-1 (23) (0.00)
    A web browser that stops ads and trackers by default. Master branch.
aur/brave-nightly-bin 1.17.25-1 (11) (1.00)
    Web browser that blocks ads and trackers by default (nightly binary release).
aur/suave 2.0-1 (0) (0.00)
    Sport Utility Assault Vehicle Extreme. Drive very small, but very brave tank.
aur/trisquel-icon-theme 7.0_4-1 (Out of Date) (3) (0.00)
    Trisquel GNU/Linux icon theme, based on Gnome Brave icon theme
[phunc20@headache-x220tablet ~]$ yaourtix -Ss brave
aur/brave 1.14.84-1 (50) (4.07)
    A web browser that stops ads and trackers by default
aur/brave-beta-bin 1.16.48-1 (20) (0.53)
    Web browser that blocks ads and trackers by default (beta binary release).
aur/brave-bin 1:1.15.72-1 (299) (13.29)
    Web browser that blocks ads and trackers by default (binary release).
aur/brave-dev-bin 1.16.58-1 (9) (0.03)
    Web browser that blocks ads and trackers by default (dev binary release).
aur/brave-git 0.70.26.g674d3b845-1 (23) (0.00)
    A web browser that stops ads and trackers by default. Master branch.
aur/brave-nightly-bin 1.17.25-1 (11) (1.00)
    Web browser that blocks ads and trackers by default (nightly binary release).
aur/suave 2.0-1 (0) (0.00)
    Sport Utility Assault Vehicle Extreme. Drive very small, but very brave tank.
aur/trisquel-icon-theme 7.0_4-1 (Out of Date) (3) (0.00)
    Trisquel GNU/Linux icon theme, based on Gnome Brave icon theme
[phunc20@headache-x220tablet ~]$ which yaourtix
/usr/bin/yaourtix
[phunc20@headache-x220tablet ~]$ which yaourt
/usr/bin/yaourt
[phunc20@headache-x220tablet ~]$ ls -l $(which yaourtix)
lrwxrwxrwx 1 root root 6 Nov  6  2019 /usr/bin/yaourtix -> yaourt
[phunc20@headache-x220tablet ~]$ ls -l $(which yaourt)
-rwxr-xr-x 1 root root 15970 Nov  6  2019 /usr/bin/yaourt
```bash
