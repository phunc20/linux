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
x11
```

## In case you are able to retain the name of `XDG_SESSION_TYPE`
You can do
```bash
[phunc20@localhost ~]$ env | grep -i xdg
XDG_MENU_PREFIX=gnome-
XDG_SESSION_DESKTOP=gnome
XDG_SESSION_TYPE=x11
XDG_CURRENT_DESKTOP=GNOME
XDG_SESSION_CLASS=user
XDG_RUNTIME_DIR=/run/user/1000
XDG_DATA_DIRS=/home/phunc20/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share/:/usr/share/
[phunc20@localhost ~]$
```
