## Turning off `wayland`
It seems that as of 2021, to use GPU, it's more recommended to turn off `wayland` (and use `xorg` instead.)
- Uncomment the `WaylandEnable=false` line
- reboot
and your machine will start using `xorg`.
```bash
[phunc20@localhost ~]$ echo $XDG_SESSION_TYPE   # Before
wayland
[phunc20@localhost ~]$ cat /etc/gdm/custom.conf
# GDM configuration storage

[daemon]
# Uncomment the line below to force the login screen to use Xorg
WaylandEnable=false

[security]

[xdmcp]

[chooser]

[debug]
# Uncomment the line below to turn on debugging
#Enable=true
[phunc20@localhost ~]$ echo $XDG_SESSION_TYPE   # After (after rebooting)
wayland
```
