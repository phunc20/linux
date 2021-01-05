## Linux GUI's fontsize
Cf. [https://wiki.archlinux.org/index.php/Font_configuration#Distorted_fonts](https://wiki.archlinux.org/index.php/Font_configuration#Distorted_fonts)

On my first Gentoo laptop, I met this problem of having fontsize too small to be properly read for all GUIs like `firefox`, `ibus-setup`, etc. Certainly, this cannot be fixed inside `firefox`.

From the link above, I found out that the situation can be changed via the concept of DPI, or dots per inch.
One can check the automatically discovered DPI with `xdpyinfo` (installed by `pacman -S xorg-xdpyinfo` or `emerge x11-apps/xdpyinfo` ):
```bash
leif@CenterLap-x1carbon ~ $ xdpyinfo | grep dots
  resolution:    96x96 dots per inch
leif@CenterLap-x1carbon
```

In my case, the font had been too small, so I added a new line in `~/.Xresources` (it seems that adding in `~/.Xdefaults` is ok, too):
```
Xft.dpi: 160
```
I am not so sure whether `160` is a sensible number; what I did was just modified it, and then reopen some gui to check whether the change was acceptable.

```bash
leif@CenterLap-x1carbon ~ $ xrdb -query | grep dpi
Xft.dpi:        160
leif@CenterLap-x1carbon ~ $
```

After that one should restart the process of `xrdb` or for some they just configure their editor (`vim`, `emacs`, etc.) to automatically do that. (For some more detail, see `../../commands/xrdb/`)
