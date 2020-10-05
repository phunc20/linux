# Too Small
The default virtual console's (i.e. <code>tty1</code> to <code>tty6</code>) font was too small and thus hard to read, especially for near-sighted users.

This <code>README</code> provides a quick fix for this. For more details, readers can refer to the excellent [arch wiki on "Linux console"](https://wiki.archlinux.org/index.php/Linux_console)

- The <code><b>kbd</b></code> package provides tools to do this. Normally, <code>kbd</code> is automatically installed into the user's machine. In case not, just <code>sudo pacman -S kbd</code>
- The available fonts for virtual console is in <code><b>/usr/share/kbd/consolefonts</b></code>, but by default there isn't any that is big enough; instead, install this: <code><b>sudo pacman -S terminus-font</b></code>
- Then you have choices btw <b>temporary</b> and <b>persistent</b> changes:
    - <b>temporary</b>: Just type the following command into the terminal. <code><b>setfont ter122-b</b></code> (I find this best suited for my eyes; you may try different options in <code>/usr/share/kbd/consolefonts</code> to find your favorite)
    - <b>persistent</b>: Edit/Create the file <code><b>/etc/vconsole.conf</b></code> and make sure that it contains the following line.
    ```
    FONT=ter-122b
    ```


