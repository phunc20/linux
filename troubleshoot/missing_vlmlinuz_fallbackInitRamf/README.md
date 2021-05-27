## My Own Experience
My laptop got dumb when I `pacman -Syu` with the `linux` package installation. So the initramf
or boot image seemed not have got written correctly. The problem: I could not boot next time
when I started my laptop, not even with fallback.

Solution:

01. Find you USB with arch linux image, and boot your laptop using that USB.
02. Connect to the Internet. (See maybe `../../commands/iwctl/README.md`)
03. Mount your disk partitions to `/mnt, /mnt/boot`, etc.
04. Do either one of the following:
  - `pacman -S linux`
  - `mkinitcpio -p linux -g /boot/initramfs-linux.img`
     - or sth with `-b /mnt/linux` (cf. <https://www.linuxquestions.org/questions/arch-29/failed-install-can%27t-boot-907526/>)



