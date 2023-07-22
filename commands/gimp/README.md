## Troubleshooting
1. Too small font size (Thanks to <https://bbs.archlinux.org/viewtopic.php?id=260240>)
    1. Copy a theme from `/usr/share/gimp/2.0/themes/` to `~/.config/GIMP/2.10/themes/`
       (which is by default empty)
       ```shell
       $ ls /usr/share/gimp/2.0/themes/
       Dark  Gray  Light  System
       $ ls ~/.config/GIMP/2.10/themes/
       $ 
       ```
       For example,
       ```shell
       cp -r /usr/share/gimp/2.0/themes/Dark ~/.config/GIMP/2.10/themes/DarkHigherDpi
       ```
       **N.B.** Remember to copy to a different name because we are going to modify its files
    1. Inside the copied theme folder, there is a file named `gtkrc`. Open it with your favorite editor,
       and then edit notably the following lines
       ```gtkrc
       GimpDock::font-scale = 1.0
       font_name = "Sans 20"
       ```
    1. Open Gimp and go to `Edit > Preferences > Interface > Theme` and select your copied and edited theme, e.g.
       following the above example, it'd be the theme `DarkHigherDpi`
