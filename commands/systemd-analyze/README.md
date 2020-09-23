<pre>
[phunc20@mushroom-x200 commands]$ systemd-analyze
Startup finished in 3.829s (kernel) + 15.128s (userspace) = 18.958s
graphical.target reached after 15.128s in userspace
[phunc20@mushroom-x200 commands]$ systemd-analyze blame
9.036s NetworkManager-wait-online.service
3.568s dev-sda2.device
2.699s systemd-journald.service
2.522s systemd-udevd.service
2.426s systemd-random-seed.service
1.297s docker.service
1.075s systemd-logind.service
 568ms systemd-udev-trigger.service
 483ms tp_smapi_set_battery_thresholds.service
 262ms modprobe@drm.service
 228ms systemd-journal-flush.service
 155ms systemd-modules-load.service
 153ms polkit.service
 152ms systemd-tmpfiles-setup-dev.service
 148ms systemd-rfkill.service
 145ms user@1000.service
 134ms systemd-fsck@dev-disk-by\x2duuid-9621902b\x2d9daf\x2d465e\x2db53d\x2d85594ccada9d.service
 116ms systemd-sysctl.service
 110ms NetworkManager.service
 107ms bluetooth.service
  95ms home.mount
  87ms systemd-remount-fs.service
  82ms systemd-tmpfiles-setup.service
  62ms dev-hugepages.mount
  60ms alsa-restore.service
  58ms dev-mqueue.mount
  54ms sys-kernel-debug.mount
  50ms sys-kernel-tracing.mount
  47ms kmod-static-nodes.service
  45ms systemd-tmpfiles-clean.service
  39ms systemd-user-sessions.service
  37ms systemd-update-utmp.service
  34ms dev-disk-by\x2duuid-ec95ab4e\x2defad\x2d4c99\x2db7e0\x2d2f4feaa0e3e1.swap
  30ms wpa_supplicant.service
  24ms systemd-backlight@backlight:acpi_video0.service
  23ms user-runtime-dir@1000.service
  20ms systemd-backlight@backlight:intel_backlight.service
  15ms sys-kernel-config.mount
  14ms rtkit-daemon.service
  13ms tmp.mount
   5ms docker.socket
[phunc20@mushroom-x200 commands]$
</pre>
