### I came to (the rescue of) this command of `mkinitcpio`
because I've encountered the following situations several times when I switched the SSD drive from a laptop
to another:
- The system cannot boot normally through grub; might be bootable through the `fallback image` from the grub menu.
- This usually happens when the concerned laptops have different hardwares, e.g.
    - From **thinkpad X220 tablet** to **thinkpad X220**, this **won't** happen
    - From **thinkpad T400** to **thinkpad T410**, this **does happen**

**Rmk.** This indeed saved me from the the buggy situation. Note that it seems that some people cannot even
enter into the system from the fallback image. In that case,
01. use an Arch/Artix iso image usb disk
02. **mount** the devices as described in `/etc/fstab`
03. **chroot** into the system
04. run **`mkinitcpio -p linux`**

Below is an example into I ran the `mkinitcpio` command on my Thinkpad T410 with SSD from T400:

```bash
/boot/grub ❯❯❯ mkinitcpio -p linux
==> Building image from preset: /etc/mkinitcpio.d/linux.preset: 'default'
  -> -k /boot/vmlinuz-linux -c /etc/mkinitcpio.conf -g /boot/initramfs-linux.img
==> ERROR: Unable to write to /boot/initramfs-linux.img
==> Building image from preset: /etc/mkinitcpio.d/linux.preset: 'fallback'
  -> -k /boot/vmlinuz-linux -c /etc/mkinitcpio.conf -g /boot/initramfs-linux-fallback.img -S autodetect
==> ERROR: Unable to write to /boot/initramfs-linux-fallback.img
/boot/grub ❯❯❯ sudo mkinitcpio -p linux
==> Building image from preset: /etc/mkinitcpio.d/linux.preset: 'default'
  -> -k /boot/vmlinuz-linux -c /etc/mkinitcpio.conf -g /boot/initramfs-linux.img
==> Starting build: 5.8.13-arch1-1
  -> Running build hook: [base]
  -> Running build hook: [udev]
  -> Running build hook: [autodetect]
  -> Running build hook: [modconf]
  -> Running build hook: [block]
  -> Running build hook: [filesystems]
  -> Running build hook: [keyboard]
  -> Running build hook: [fsck]
==> Generating module dependencies
==> Creating gzip-compressed initcpio image: /boot/initramfs-linux.img
==> Image generation successful
==> Building image from preset: /etc/mkinitcpio.d/linux.preset: 'fallback'
  -> -k /boot/vmlinuz-linux -c /etc/mkinitcpio.conf -g /boot/initramfs-linux-fallback.img -S autodetect
==> Starting build: 5.8.13-arch1-1
  -> Running build hook: [base]
  -> Running build hook: [udev]
  -> Running build hook: [modconf]
  -> Running build hook: [block]
==> WARNING: Possibly missing firmware for module: wd719x
==> WARNING: Possibly missing firmware for module: aic94xx
==> WARNING: Possibly missing firmware for module: xhci_pci
  -> Running build hook: [filesystems]
  -> Running build hook: [keyboard]
  -> Running build hook: [fsck]
==> Generating module dependencies
==> Creating gzip-compressed initcpio image: /boot/initramfs-linux-fallback.img
==> Image generation successful
```
