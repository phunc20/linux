`xmodmap` is a command which can help remap the keystrokes.
Usually, you record your favorite settings in a text file, say named
`~/downloads/my_favorite_keymaps`. Then to convert to your
key mappings, you simply
```bash
$ xmodmap ~/downloads/my_favorite_keymaps
```

However, usually people keep such a file at the path of
`~/.Xmodmap`, and activate the remapping from
within `~/.xinitrc` or sth similar.

The following is an example of such files.
```
! -*- coding: utf-8 -*-
keycode 112 = XF86Back NoSymbol XF86Back
keycode 117 = XF86Forward NoSymbol XF86Forward
keycode 118 = Prior NoSymbol Prior
keycode 119 = Next NoSymbol Next
clear lock
keycode  66 = Escape NoSymbol Escape
keycode   9 = Caps_Lock NoSymbol Caps_Lock
add lock = Caps_Lock
```

This particular example changes
- `Insert` to `PgUp`
- `Delete` to `PgDn`
- `PgUp` to `Prior`
- `PgDn` to `Next`

which could prove useful to generations of Thinkpads
later than X220.

Besides, this example also illustrates the basic
principles for editting such files:
- On the RHS of the equal signs, one puts the function
  one wants the corresponding keycode/keypress to do.
  One could find such mapping names in the file
  `/usr/include/X11/XF86keysym.h`.
- On the LHS of the equal signs are the so-called keycodes.
  One could use the program `xev` to find the keycodes
  specific to one's machine or keyboard.

