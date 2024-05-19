## Mirror
```bash
$ pacman -Syu
error: failed retrieving file 'libre.db' from mirror.freedif.org : Connection timeout after 10000 ms
error: failed retrieving file 'core.db' from mirror.freedif.org : Connection timeout after 10000 ms
error: failed retrieving file 'extra.db' from mirror.freedif.org : Connection timeout after 10001 ms
warning: too many errors from mirror.freedif.org, skipping for the remainder of this transaction
```

This could probably be resolved by removing the mirror `mirror.freedif.org` from `/etc/pacman.d/mirrorlist`

```bash
~% grep -B1 "mirror.freedif.org" /etc/pacman.d/mirrorlist
## Vietnam
Server = http://mirror.freedif.org/Parabola/$repo/os/$arch
```

## `mkinitcpio`
```bash
$ pacman -Syu
warning: mkinitcpio: local (30-2.0) is newer than libre (30-2.parabola2)
 there is nothing to do
```
A seemingly working solution is `pacman -Syuu`

```bash
~% pacman -Syuu
:: Synchronizing package databases...
 libre is up to date
 core is up to date
 extra is up to date
 community is up to date
 pcr is up to date
:: Starting full system upgrade...
warning: mkinitcpio: downgrading from version 30-2.0 to version 30-2.parabola2
resolving dependencies...
looking for conflicting packages...

Packages (1) mkinitcpio-30-2.parabola2

Total Download Size:   0.05 MiB
Total Installed Size:  0.10 MiB
Net Upgrade Size:      0.00 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
 mkinitcpio-30-2.parabola2-any    47.4 KiB  39.6 KiB/s 00:01 [#################################] 100%
error: failed retrieving file 'mkinitcpio-30-2.parabola2-any.pkg.tar.zst' from mirror.fsf.org : The requested URL returned error: 404
(1/1) checking keys in keyring                               [#################################] 100%
(1/1) checking package integrity                             [#################################] 100%
(1/1) loading package files                                  [#################################] 100%
(1/1) checking for file conflicts                            [#################################] 100%
(1/1) checking available disk space                          [#################################] 100%
:: Processing package changes...
(1/1) downgrading mkinitcpio                                 [#################################] 100%
:: Running post-transaction hooks...
(1/4) Reloading system manager configuration...
(2/4) Creating temporary files...
(3/4) Arming ConditionNeedsUpdate...
(4/4) Updating linux initcpios...
==> Building image from preset: /etc/mkinitcpio.d/linux-libre.preset: 'default'
  -> -k /boot/vmlinuz-linux-libre -c /etc/mkinitcpio.conf -g /boot/initramfs-linux-libre.img
==> Starting build: 5.14.11-gnu-1
  -> Running build hook: [base]
  -> Running build hook: [udev]
  -> Running build hook: [autodetect]
  -> Running build hook: [modconf]
  -> Running build hook: [block]
  -> Running build hook: [filesystems]
  -> Running build hook: [keyboard]
  -> Running build hook: [fsck]
==> Generating module dependencies
==> Creating zstd-compressed initcpio image: /boot/initramfs-linux-libre.img
==> Image generation successful
==> Building image from preset: /etc/mkinitcpio.d/linux-libre.preset: 'fallback'
  -> -k /boot/vmlinuz-linux-libre -c /etc/mkinitcpio.conf -g /boot/initramfs-linux-libre-fallback.img -S autodetect
==> Starting build: 5.14.11-gnu-1
  -> Running build hook: [base]
  -> Running build hook: [udev]
  -> Running build hook: [modconf]
  -> Running build hook: [block]
  -> Running build hook: [filesystems]
  -> Running build hook: [keyboard]
  -> Running build hook: [fsck]
==> Generating module dependencies
==> Creating zstd-compressed initcpio image: /boot/initramfs-linux-libre-fallback.img
==> Image generation successful
```
