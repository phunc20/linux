### How
- [https://wiki.manjaro.org/index.php/Configure_NVIDIA_(non-free)_settings_and_load_them_on_Startup](https://wiki.manjaro.org/index.php/Configure_NVIDIA_(non-free)_settings_and_load_them_on_Startup)


```bash
$ inxi -G
Graphics:
  Device-1: Intel UHD Graphics 630 driver: i915 v: kernel
  Device-2: NVIDIA GP107 [GeForce GTX 1050] driver: nouveau v: kernel
  Display: x11 server: X.Org 1.20.8 driver: intel,nouveau unloaded: modesetting
  resolution: 1920x1080~60Hz
  OpenGL: renderer: NV137 v: 4.3 Mesa 20.0.7
```






### Trouble: kernel version 5.6
cf. [https://forum.manjaro.org/t/fresh-kde-install-cant-install-nvidia-drivers-second-monitor-is-recognized-but-has-no-signal/24492/5](https://forum.manjaro.org/t/fresh-kde-install-cant-install-nvidia-drivers-second-monitor-is-recognized-but-has-no-signal/24492/5)
```bash
[phunc20@vostro3670 ~]$ sudo mhwd -a pci nonfree 0300
> Using config 'video-nvidia-450xx' for device: 0000:01:00.0 (0300:10de:1c81) Display controller nVidia Corporation GP107 [GeForce GTX 1050]
> Installing video-nvidia-450xx...
Sourcing /etc/mhwd-x86_64.conf
Has lib32 support: true
Sourcing /var/lib/mhwd/db/pci/graphic_drivers/nvidia-450xx/MHWDCONFIG
Processing classid: 0300
Sourcing /var/lib/mhwd/scripts/include/0300
Processing classid: 0302
:: Synchronizing package databases...
warning: nvidia-450xx-utils-450.66-1 is up to date -- skipping
error: target not found: linux56-nvidia-450xx
warning: linux58-nvidia-450xx-450.66-9 is up to date -- skipping
 core is up to date
 extra is up to date
 community is up to date
 multilib is up to date
Error: pacman failed!
Error: script failed!
[phunc20@vostro3670 ~]$ pacman -Qs linux56
local/linux56 5.6.15-1
    The Linux56 kernel and modules
[phunc20@vostro3670 ~]$ sudo pacman -Rns linux56
checking dependencies...

Packages (1) linux56-5.6.15-1

Total Removed Size:  144.85 MiB

:: Do you want to remove these packages? [Y/n]
:: Running pre-transaction hooks...
(1/1) Removing linux initcpios...
:: Processing package changes...
(1/1) removing linux56                              [###########################] 100%
:: Running post-transaction hooks...
(1/3) Arming ConditionNeedsUpdate...
(2/3) Updating module dependencies...
(3/3) Updating Grub-Bootmenu
Generating grub configuration file ...
Found theme: /usr/share/grub/themes/manjaro/theme.txt
Found linux image: /boot/vmlinuz-5.8-x86_64
Found initrd image: /boot/intel-ucode.img /boot/initramfs-5.8-x86_64.img
Found initrd fallback image: /boot/initramfs-5.8-x86_64-fallback.img
Adding boot menu entry for UEFI Firmware Settings ...
Found memtest86+ image: /boot/memtest86+/memtest.bin
done
[phunc20@vostro3670 ~]$ pacman -Qs linux56
[phunc20@vostro3670 ~]$ sudo mhwd -a pci nonfree 0300
> Using config 'video-nvidia-450xx' for device: 0000:01:00.0 (0300:10de:1c81) Display controller nVidia Corporation GP107 [GeForce GTX 1050]
> Installing video-nvidia-450xx...
Sourcing /etc/mhwd-x86_64.conf
Has lib32 support: true
Sourcing /var/lib/mhwd/db/pci/graphic_drivers/nvidia-450xx/MHWDCONFIG
Processing classid: 0300
Sourcing /var/lib/mhwd/scripts/include/0300
Processing classid: 0302
:: Synchronizing package databases...
warning: nvidia-450xx-utils-450.66-1 is up to date -- skipping
warning: linux58-nvidia-450xx-450.66-9 is up to date -- skipping
 core is up to date
 extra is up to date
 community is up to date
 multilib is up to date
resolving dependencies...
looking for conflicting packages...

Packages (1) lib32-nvidia-450xx-utils-450.66-1

Total Download Size:    32.63 MiB
Total Installed Size:  101.21 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
downloading lib32-nvidia-450xx-utils-450.66-1-x86_64.pkg.tar.zst...
checking keyring...
checking package integrity...
loading package files...
checking for file conflicts...
checking available disk space...
:: Processing package changes...
installing lib32-nvidia-450xx-utils...
Optional dependencies for lib32-nvidia-450xx-utils
    lib32-opencl-nvidia-450xx
:: Running post-transaction hooks...
(1/1) Arming ConditionNeedsUpdate...
nvidia-450xx-utils: install reason has been set to 'explicitly installed'
lib32-nvidia-450xx-utils: install reason has been set to 'explicitly installed'
linux58-nvidia-450xx: install reason has been set to 'explicitly installed'
xorg configuration file: '/etc/X11/mhwd.d/nvidia.conf'
> Successfully installed video-nvidia-450xx
[phunc20@vostro3670 ~]$

```





```bash
[phunc20@vostro3670 ~]$ mhwd -li
> Installed PCI configs:
--------------------------------------------------------------------------------
                  NAME               VERSION          FREEDRIVER           TYPE
--------------------------------------------------------------------------------
    video-nvidia-450xx            2019.10.25               false            PCI
           video-linux            2018.05.04                true            PCI


Warning: No installed USB configs!
```
