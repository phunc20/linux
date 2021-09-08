**`xdg-screensaver lock`** is the command to lock screen from command line.

```bash
~ ❯❯❯ printf 'Desktop: %s\nSession: %s\n' "$XDG_CURRENT_DESKTOP" "$GDMSESSION"
Desktop: GNOME
Session: gnome
~ ❯❯❯ xdg-
xdg-dbus-proxy            xdg-open                  xdpyinfo
xdg-desktop-icon          xdg-screensaver           xdriinfo
xdg-desktop-menu          xdg-settings              xdvi
xdg-email                 xdg-user-dir              xdvipdfmx
xdg-icon-resource         xdg-user-dirs-gtk-update  xdvi-xaw
xdg-mime                  xdg-user-dirs-update      
~ ❯❯❯ gnome-
gnome-abrt                    gnome-photos
gnome-boxes                   gnome-screenshot
gnome-calculator              gnome-session
gnome-calendar                gnome-session-custom-session
gnome-characters              gnome-session-inhibit
gnome-clocks                  gnome-session-quit
gnome-contacts                gnome-shell
gnome-control-center          gnome-shell-extension-prefs
gnome-disk-image-mounter      gnome-shell-extension-tool
gnome-disks                   gnome-shell-perf-tool
gnome-extensions              gnome-software
gnome-font-viewer             gnome-system-monitor
gnome-help                    gnome-terminal
gnome-keyring                 gnome-thumbnail-font
gnome-keyring-3               gnome-tour
gnome-keyring-daemon          gnome-tweaks
gnome-logs                    gnome-weather
gnome-maps                    
~ ❯❯❯
```
