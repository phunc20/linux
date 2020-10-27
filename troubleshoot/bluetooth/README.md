







[~] >>> lsmod | grep btusb
btusb                  65536  0
btrtl                  24576  1 btusb
btbcm                  20480  1 btusb
btintel                32768  1 btusb
bluetooth             720896  5 btrtl,btintel,btbcm,btusb
[~] >>> modinfo btusb
filename:       /lib/modules/5.8.13-arch1-1/kernel/drivers/bluetooth/btusb.ko.xz
license:        GPL
version:        0.8

[~] >>> pacman -S bluez
resolving dependencies...
looking for conflicting packages...

Packages (2) libical-3.0.8-2  bluez-5.55-1

Total Download Size:   1.39 MiB
Total Installed Size:  9.40 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
 libical-3.0.8-2-x86_64                         600.6 KiB   424 KiB/s 00:01 [###########################################] 100%
 bluez-5.55-1-x86_64                            818.8 KiB   664 KiB/s 00:01 [###########################################] 100%
(2/2) checking keys in keyring                                              [###########################################] 100%
(2/2) checking package integrity                                            [###########################################] 100%
(2/2) loading package files                                                 [###########################################] 100%
(2/2) checking for file conflicts                                           [###########################################] 100%
(2/2) checking available disk space                                         [###########################################] 100%
:: Processing package changes...
(1/2) installing libical                                                    [###########################################] 100%
(2/2) installing bluez                                                      [###########################################] 100%
:: Running post-transaction hooks...
(1/3) Reloading system manager configuration...
(2/3) Arming ConditionNeedsUpdate...
(3/3) Reloading system bus configuration...
[~] >>> pacman -S bluez-utils
resolving dependencies...
looking for conflicting packages...

Packages (1) bluez-utils-5.55-1

Total Download Size:   1.17 MiB
Total Installed Size:  6.91 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
 bluez-utils-5.55-1-x86_64                     1203.2 KiB  1035 KiB/s 00:01 [###########################################] 100%
(1/1) checking keys in keyring                                              [###########################################] 100%
(1/1) checking package integrity                                            [###########################################] 100%
(1/1) loading package files                                                 [###########################################] 100%
(1/1) checking for file conflicts                                           [###########################################] 100%
(1/1) checking available disk space                                         [###########################################] 100%
:: Processing package changes...
(1/1) installing bluez-utils                                                [###########################################] 100%
Optional dependencies for bluez-utils
    ell: for btpclient
:: Running post-transaction hooks...
(1/1) Arming ConditionNeedsUpdate...
[~] >>>



[bluetooth] >>> sudo systemctl start bluetooth.service
[bluetooth] >>> sudo systemctl enable bluetooth.service
Created symlink /etc/systemd/system/dbus-org.bluez.service → /usr/lib/systemd/system/bluetooth.service.
Created symlink /etc/systemd/system/bluetooth.target.wants/bluetooth.service → /usr/lib/systemd/system/bluetooth.service.
[bluetooth] >>> bluetooth
bluetoothctl      bluetooth-player
[bluetooth] >>> #bluetoothctl
[bluetooth] >>> #bluetoothctl
