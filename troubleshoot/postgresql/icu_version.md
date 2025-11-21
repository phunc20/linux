It happened to me that `pacman` upgraded `icu` (some library for unicode)
to version 78 but `postgresql` wanted to use version 76 (because arch users
often lock postgresql upgrade). My solution was

1. Find the exact version of `icu` on AUR
2. `git clone https://aur.archlinux.org/icu76.git`
3. `cd icu76`
4. `makepkg`
5. `makepkg --install`
    - This will put, e.g., `libicui18n.so.76.1` and `libicuuc.so.76.1` in `/usr/lib/`
      but will not remove your latest corresponding files.


Ref.
- <https://wiki.archlinux.org/title/Makepkg#Usage>
- <https://aur.archlinux.org/packages/icu76>
