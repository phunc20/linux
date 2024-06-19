phunc20@cingular-x61s:~/.local/bin/suckless/st$ make
st build options:
/bin/sh: 1: pkg-config: not found
/bin/sh: 1: pkg-config: not found
CFLAGS  = -I/usr/X11R6/include     -DVERSION="0.8.4" -D_XOPEN_SOURCE=600  -O
/bin/sh: 1: pkg-config: not found
/bin/sh: 1: pkg-config: not found
LDFLAGS = -L/usr/X11R6/lib -lm -lrt -lX11 -lutil -lXft     
CC      = c99
c99 -I/usr/X11R6/include  `pkg-config --cflags fontconfig`  `pkg-config --cflags freetype2` -DVERSION=\"0.8.4\" -D_XOPEN_SOURCE=600  -O -c x.c
/bin/sh: 1: pkg-config: not found
/bin/sh: 1: pkg-config: not found
x.c:11:10: fatal error: X11/Xatom.h: No such file or directory
 #include <X11/Xatom.h>
          ^~~~~~~~~~~~~
compilation terminated.
make: *** [Makefile:22: x.o] Error 1


sudo apt install libx11-dev

phunc20@cingular-x61s:~/.local/bin/suckless/st$ make
st build options:
/bin/sh: 1: pkg-config: not found
/bin/sh: 1: pkg-config: not found
CFLAGS  = -I/usr/X11R6/include     -DVERSION="0.8.4" -D_XOPEN_SOURCE=600  -O
/bin/sh: 1: pkg-config: not found
/bin/sh: 1: pkg-config: not found
LDFLAGS = -L/usr/X11R6/lib -lm -lrt -lX11 -lutil -lXft     
CC      = c99
c99 -I/usr/X11R6/include  `pkg-config --cflags fontconfig`  `pkg-config --cflags freetype2` -DVERSION=\"0.8.4\" -D_XOPEN_SOURCE=600  -O -c x.c
/bin/sh: 1: pkg-config: not found
/bin/sh: 1: pkg-config: not found
x.c:15:10: fatal error: X11/Xft/Xft.h: No such file or directory
 #include <X11/Xft/Xft.h>
          ^~~~~~~~~~~~~~~
compilation terminated.
make: *** [Makefile:22: x.o] Error 1
phunc20@cingular-x61s:~/.local/bin/suckless/st$


libxft-dev
