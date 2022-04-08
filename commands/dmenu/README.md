## Why suckless's `dmenu` on newly installed machine
does not recognize, say the executable `wifi-dmenu`, even when I have already put its path in `PATH` env variable?

If you read carefully enough the two scripts `dmenu_run` and `dmenu_path`, there is this `~/.cache/dmenu_run` which
will contain all the executables the machine could find under `PATH` at the time of compilation of `dmenu`.
- Recompile `dmenu` **won't help**
- By contrast, `rm ~/.cache/dmenu_run` will do
This is because this file is created by the script `dmenu_path` and it gets renewed **when and only when** the file `~/.cache/dmenu_run` is absent.


## `dmenu_run`
If you are a `dwm` user, this command is what `Alt-p` calls under the hood. Cf. `suckless/dwm/config.def.h`

By default, the suggesting command list from `dmenu_run` expands to the right, and one uses the right
arrow key to move and choose. Sometimes, however, one would like it to expand downwards, like a drop-down
list. If that's the case, one could do as follows
- calling `dmenu_run` from command line by specifying the option `-l`
  ```bash
  # the number after -l indicates how many lines you want
  dmenu_run -l 3
  ```
- set it as default in `dwm`
  ```c
  static const char dmenulines[] = "3";
  static const char *dmenucmd[] = { "dmenu_run", "-l", dmenulines, "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_wine, "-sf", col_gray4, NULL };
  ```
