phunc20@cingular-x61s:~/.local/bin/suckless/dmenu$ make
dmenu build options:
CFLAGS   = -std=c99 -pedantic -Wall -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION="5.0" -DXINERAMA
LDFLAGS  = -L/usr/X11R6/lib -lX11 -lXinerama -lfontconfig -lXft
CC       = cc
cp config.def.h config.h
cc -c -std=c99 -pedantic -Wall -Os -I/usr/X11R6/include -I/usr/include/freetype2 -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"5.0\" -DXINERAMA dmenu.c
dmenu.c:15:10: fatal error: X11/extensions/Xinerama.h: No such file or directory
 #include <X11/extensions/Xinerama.h>
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [Makefile:18: dmenu.o] Error 1
phunc20@cingular-x61s:~/.local/bin/suckless/dmenu$ apt search xinerama
phunc20@cingular-x61s:~/.local/bin/suckless/dmenu$ sudo apt install libxinerama-dev



## `dmenu` not working on xfce?
~/.xsessionrc

