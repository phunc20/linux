## Lack of packages to compile `dwm`
By default, Fedora is not equipped with all the packages to install `dwm` from source. The following are a few needed packages on Fedora for `dwm`:
- `sudo dnf install libX11-devel libXft-devel libXinerama-devel`

```bash
~/.../bin/suckless/dwm ❯❯❯ make
dwm build options:
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION="6.2" -DXINERAMA
LDFLAGS  = -L/usr/X11R6/lib -lX11 -lXinerama -lfontconfig -lXft
CC       = cc
cc -c -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"6.2\" -DXINERAMA drw.c
drw.c:5:10: fatal error: X11/Xlib.h: No such file or directory
    5 | #include <X11/Xlib.h>
      |          ^~~~~~~~~~~~
compilation terminated.
make: *** [Makefile:18: drw.o] Error 1
~/.../bin/suckless/dwm ❯❯❯ sudo dnf install libX11-devel
~/.../bin/suckless/dwm ❯❯❯ make
dwm build options:
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION="6.2" -DXINERAMA
LDFLAGS  = -L/usr/X11R6/lib -lX11 -lXinerama -lfontconfig -lXft
CC       = cc
cc -c -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"6.2\" -DXINERAMA drw.c
drw.c:6:10: fatal error: X11/Xft/Xft.h: No such file or directory
    6 | #include <X11/Xft/Xft.h>
      |          ^~~~~~~~~~~~~~~
compilation terminated.
make: *** [Makefile:18: drw.o] Error 1
~/downloads ❯❯❯ sudo dnf search xft
Last metadata expiration check: 1:33:35 ago on Wed 27 Jan 2021 10:59:36 AM +07.
======================================================================== Name & Summary Matched: xft ========================================================================
ghc-X11-xft.x86_64 : Haskell libXft binding
ghc-X11-xft-devel.x86_64 : Haskell X11-xft library development files
ghc-X11-xft-doc.noarch : Haskell X11-xft library documentation
ghc-X11-xft-prof.x86_64 : Haskell X11-xft profiling library
libXft.x86_64 : X.Org X11 libXft runtime library
libXft.i686 : X.Org X11 libXft runtime library
libXft-devel.i686 : X.Org X11 libXft development package
libXft-devel.x86_64 : X.Org X11 libXft development package
xemacs-xft.x86_64 : Different version of Emacs built with Xft/fontconfig support
~/.../bin/suckless/dwm ❯❯❯ sudo dnf install libXft-devel
~/.../bin/suckless/dwm ❯❯❯ make
dwm build options:
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION="6.2" -DXINERAMA
LDFLAGS  = -L/usr/X11R6/lib -lX11 -lXinerama -lfontconfig -lXft
CC       = cc
cc -c -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"6.2\" -DXINERAMA drw.c
cc -c -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"6.2\" -DXINERAMA dwm.c
dwm.c:40:10: fatal error: X11/extensions/Xinerama.h: No such file or directory
   40 | #include <X11/extensions/Xinerama.h>
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [Makefile:18: dwm.o] Error 1
~/.../bin/suckless/dwm ❯❯❯ sudo dnf search xinerama
Last metadata expiration check: 1:35:38 ago on Wed 27 Jan 2021 10:59:36 AM +07.
===================================================================== Name & Summary Matched: xinerama ======================================================================
libXinerama.x86_64 : X.Org X11 libXinerama runtime library
libXinerama.i686 : X.Org X11 libXinerama runtime library
libXinerama-devel.i686 : X.Org X11 libXinerama development package
libXinerama-devel.x86_64 : X.Org X11 libXinerama development package
~/downloads ❯❯❯ sudo dnf install libXinerama
Last metadata expiration check: 1:35:57 ago on Wed 27 Jan 2021 10:59:36 AM +07.
Package libXinerama-1.1.4-6.fc33.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
~/.../bin/suckless/dwm ❯❯❯ sudo dnf install libXinerama-devel
~/.../bin/suckless/dwm ❯❯❯ make
dwm build options:
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION="6.2" -DXINERAMA
LDFLAGS  = -L/usr/X11R6/lib -lX11 -lXinerama -lfontconfig -lXft
CC       = cc
cc -c -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"6.2\" -DXINERAMA dwm.c
cc -c -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L -DVERSION=\"6.2\" -DXINERAMA util.c
cc -o dwm drw.o dwm.o util.o -L/usr/X11R6/lib -lX11 -lXinerama -lfontconfig -lXft
```
