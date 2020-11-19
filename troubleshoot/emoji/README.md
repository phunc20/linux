## Emoji in browsers
You know of the `libXft BGRA` from [**Maxime Coste**](https://gitlab.freedesktop.org/xorg/lib/libxft/-/merge_requests/1).
That has to do with displaying emojis in terminal emulator and dmenu, dwm, etc. **while** in a browser
- a clean install of arch-based distro and a browser (any of firefox, chromium, brave, etc.) **won't** be able to display emoji right out of the box
- **`pacman -S noto-fonts-emoji`** will make the emoji display possible


## Emoji in terminal emulator
### As of 2020/11/18
On arch linux, one can install `libxft-bgra-git` via `yay`:

```bash
~ ❯❯❯ yay -S libxft-bgra-git
:: Checking for conflicts...
:: Checking for inner conflicts...
 ->
Package conflicts found:
 -> Installing libxft-bgra-git will remove: libxft
 -> Conflicting packages will have to be confirmed manually
[Repo:1]  xorg-util-macros-1.19.2-2
[Aur:1]  libxft-bgra-git-2.3.3.r112.dcd637d-1

:: Downloaded PKGBUILD (1/1): libxft-bgra-git
  1 libxft-bgra-git                          (Build Files Exist)
==> Diffs to show?
==> [N]one [A]ll [Ab]ort [I]nstalled [No]tInstalled or (1 2 3, 1-3, ^4)
```


