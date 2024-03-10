# Too Small
The default virtual console's (i.e. `tty1` to `tty6`) font was too small and thus hard to read, especially for near-sighted users.

Depending on your OS or on your desktop manager, solutions may differ:

- Arch Linux
    - `kbd`
        - The **`kbd`** package provides tools to do this. Normally, `kbd` is automatically installed into the user's machine. In case not, just `sudo pacman -S kbd`
        - The available fonts for virtual console is in **`/usr/share/kbd/consolefonts`**, but by default there isn't any that is big enough; instead, install this: `sudo pacman -S terminus-font`
        - One has choices btw **temporary** and **persistent** changes:
            - **temporary**: Just type the following command into the terminal. **`setfont ter-122b`** (I find this best suited for my eyes; you may try different options in `/usr/share/kbd/consolefonts` to find your favorite)
            - **persistent**: Edit/Create the file **`/etc/vconsole.conf`** and make sure that it contains the following line.
              ```
              FONT=ter-122b
              ```
    - For more details, readers can refer to the excellent [arch wiki on "Linux console"](https://wiki.archlinux.org/index.php/Linux_console)
- Debian
    - Gnome: In one of the TTYs, type the following command
      ```bash
      sudo dpkg-reconfigure console-setup
      ```
      A TUI will pop up, which is a series of menu that you can select. Usually,
      the following selections will be fine
        - Encoding: UTF-8
        - Character set: Latin1 and Latin5
        - Font for the console: TerminusBold
        - Font size: 11x22
      Please feel free to try other things.
