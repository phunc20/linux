To have `dmenu_run` on gnome under Fedora33, compile the code of `dmenu` and then
put the executables (`dmenu, dmenu_run, dmenu_path, stest`) under `$PATH` (Use symlink would be good enough). Then to link the key combination `Alt-p` to `dmenu_run` in gnome, open the `[Keyboard Shortcuts]` to configure it like the figure below.
[dmenu_run_in_gnome.png](dmenu_run_in_gnome.png)


## `make`
If you clone the `dmenu` repo and install it manually, then most likely you will encounter, when you do `make clean install`,
```bash
dmenu.c:11:10: fatal error: X11/Xlib.h: No such file or directory
   11 | #include <X11/Xlib.h>
      |          ^~~~~~~~~~~~
compilation terminated.
make: *** [Makefile:18: dmenu.o] Error 1
```

To obtain the header files and resolve this, try `dnf install libX11-devel`
