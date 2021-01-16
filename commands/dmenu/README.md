## Why suckless's `dmenu` on newly installed machine
does not recognize, say the executable `wifi-dmenu`, even when I have already put its path in `PATH` env variable?

If you read carefully enough the two scripts `dmenu_run` and `dmenu_path`, there is this `~/.cache/dmenu_run` which
will contain all the executables the machine could find under `PATH` at the time of compilation of `dmenu`.
- Recompile `dmenu` **won't help**
- By contrast, `rm ~/.cache/dmenu_run` will do
This is because this file is created by the script `dmenu_path` and it gets renewed **when and only when** the file `~/.cache/dmenu_run` is absent.











