## `emerge`-`pacman` equivalents

| `emerge` | `pacman` |
|:----:|:----:|
| `emerge --sync` | `pacman -Syu`? |
| `emerge <package>` | `pacman -S <package>` |
| `emerge --depclean <package>` | `pacman -Rns <package>` |
| `systemctl stop postgresql` | `sv stop postgresql` |
| `grep <package> /var/lib/portage/world` | `pacman -Qs <package>` |
| `cat /var/lib/portage/world` | `pacman -Q` |



```bash
leif@CenterLap-x1carbon ~/todo/emerge $ sudo emerge --depclean media-fonts/arphicfonts

Calculating dependencies... done!
>>> Calculating removal order...

 media-fonts/arphicfonts
    selected: 0.2.20080216.1-r2
   protected: none
     omitted: none

All selected packages: =media-fonts/arphicfonts-0.2.20080216.1-r2

>>> 'Selected' packages are slated for removal.
>>> 'Protected' and 'omitted' packages will not be removed.

>>> Waiting 5 seconds before starting...
>>> (Control-C to abort)...
>>> Unmerging in: 5 4 3 2 1
>>> Unmerging (1 of 1) media-fonts/arphicfonts-0.2.20080216.1-r2...
 * Cleaning up font directories ...                                                                                            [ ok ]
 * Updating global fontcache ...                                                                                               [ ok ]
Packages installed:   908
Packages in world:    101
Packages in system:   43
Required packages:    908
Number removed:       1

 * GNU info directory index is up-to-date.

 * IMPORTANT: 3 news items need reading for repository 'gentoo'.
 * Use eselect news read to view new items.

leif@CenterLap-x1carbon ~/todo/emerge $
```


## Inspect installed packages
- list all packages: **`cat /var/lib/portage/world`**
- check if some package has been installed: For example, for the `fontconfig` package, **`grep fontconfig /var/lib/portage/world`**
```bash
leif@CenterLap-x1carbon ~/.local/share $ cat /var/lib/portage/world
...
www-client/firefox
www-client/links
www-client/lynx
www-client/qutebrowser
www-client/w3m
x11-apps/xev
x11-apps/xinput
x11-apps/xkbcomp
x11-apps/xmodmap
...
leif@CenterLap-x1carbon ~/.local/share $ grep fontconfig /var/lib/portage/world
media-libs/fontconfig
leif@CenterLap-x1carbon ~/.local/share $
```



