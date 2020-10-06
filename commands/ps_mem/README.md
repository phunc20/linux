```bash
[phunc20@headache-x220tablet ~]$ sudo pacman -S ps_mem
resolving dependencies...
looking for conflicting packages...

Packages (1) ps_mem-3.13-1

Total Download Size:   0.01 MiB
Total Installed Size:  0.02 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
 ps_mem-3.13-1-any                       10.6 KiB  0.00   B/s 00:00 [#####################################] 100%
(1/1) checking keys in keyring                                      [#####################################] 100%
(1/1) checking package integrity                                    [#####################################] 100%
(1/1) loading package files                                         [#####################################] 100%
(1/1) checking for file conflicts                                   [#####################################] 100%
(1/1) checking available disk space                                 [#####################################] 100%
:: Processing package changes...
(1/1) installing ps_mem                                             [#####################################] 100%
[phunc20@headache-x220tablet ~]$ ps_mem
Sorry, root permission required, or specify pids with -p
[phunc20@headache-x220tablet ~]$ man ps_mem
[phunc20@headache-x220tablet ~]$ sudo ps_mem
 Private  +   Shared  =  RAM used       Program

112.0 KiB + 136.0 KiB = 248.0 KiB       runsvdir
120.0 KiB + 174.0 KiB = 294.0 KiB       sleep
212.0 KiB + 334.0 KiB = 546.0 KiB       xinit
300.0 KiB + 370.0 KiB = 670.0 KiB       sxhkd
324.0 KiB + 430.0 KiB = 754.0 KiB       dbus-launch
424.0 KiB + 676.0 KiB =   1.1 MiB       sh
460.0 KiB + 696.0 KiB =   1.1 MiB       xcompmgr
656.0 KiB + 666.0 KiB =   1.3 MiB       runit
344.0 KiB +   1.1 MiB =   1.4 MiB       tmux: client
584.0 KiB + 894.0 KiB =   1.4 MiB       ez_dwmbar
668.0 KiB +   1.0 MiB =   1.6 MiB       agetty (5)
632.0 KiB +   1.1 MiB =   1.7 MiB       dconf-service
752.0 KiB +   1.0 MiB =   1.8 MiB       runsv (10)
768.0 KiB +   1.3 MiB =   2.1 MiB       ibus-portal
788.0 KiB +   1.3 MiB =   2.1 MiB       ibus-dconf
856.0 KiB +   1.4 MiB =   2.2 MiB       ibus-engine-simple
924.0 KiB +   1.5 MiB =   2.4 MiB       at-spi-bus-launcher
  1.0 MiB +   1.5 MiB =   2.5 MiB       login
  1.1 MiB +   1.3 MiB =   2.5 MiB       udevd
  1.0 MiB +   1.7 MiB =   2.7 MiB       at-spi2-registryd
  1.4 MiB +   1.5 MiB =   2.9 MiB       elogind
  1.1 MiB +   1.9 MiB =   3.0 MiB       connman-vpnd
  1.1 MiB +   1.9 MiB =   3.0 MiB       tmux: server
  1.2 MiB +   2.1 MiB =   3.3 MiB       ibus-engine-unikey
  1.3 MiB +   2.4 MiB =   3.7 MiB       dbus-daemon (3)
  1.8 MiB +   2.7 MiB =   4.5 MiB       sudo
  2.0 MiB +   2.8 MiB =   4.8 MiB       connmand
  3.6 MiB +   5.0 MiB =   8.6 MiB       wpa_supplicant
  4.0 MiB +   6.2 MiB =  10.2 MiB       dwm
  7.5 MiB +   7.9 MiB =  15.4 MiB       ibus-daemon
  7.6 MiB +  11.5 MiB =  19.0 MiB       st
  6.3 MiB +  12.9 MiB =  19.2 MiB       ibus-x11
 10.4 MiB +  10.5 MiB =  20.9 MiB       nvim
 12.6 MiB +  15.7 MiB =  28.3 MiB       bash (10)
 17.5 MiB +  19.8 MiB =  37.4 MiB       ranger
 15.0 MiB +  22.8 MiB =  37.8 MiB       ibus-extension-gtk3
 23.0 MiB +  36.0 MiB =  59.0 MiB       ibus-ui-gtk3
 29.4 MiB +  36.9 MiB =  66.3 MiB       Xorg
 36.3 MiB +  37.9 MiB =  74.2 MiB       ibus-engine-libpinyin
 75.5 MiB + 105.5 MiB = 181.0 MiB       python3.8 (7)
 88.0 MiB + 102.5 MiB = 190.5 MiB       mpv
426.9 MiB + 471.3 MiB = 898.3 MiB       qutebrowser
  1.6 GiB +   1.8 GiB =   3.4 GiB       QtWebEngineProcess (32)
---------------------------------
                          5.1 GiB
=================================
[phunc20@headache-x220tablet ~]$
```
