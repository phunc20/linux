- Change colors in the std of `ls` by modifying the env var `LS_COLORS`,
  e.g.
  ```bash
  $ LS_COLORS="$LS_COLORS:di=0;35"
  $ export LS_COLORS
  ```
  Cf.
    - <https://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console>
    - <http://www.bigsoft.co.uk/blog/2008/04/11/configuring-ls_colors>
  What is `di=0;35`? The general syntax
  could be written as `file_type=[style;]color[;background]`.
  And the following is the lists of the encodings:
    - `file_type`
      ```
      bd = (BLOCK, BLK)   Block device (buffered) special file
      cd = (CHAR, CHR)    Character device (unbuffered) special file
      di = (DIR)  Directory
      do = (DOOR) [Door][1]
      ex = (EXEC) Executable file (ie. has 'x' set in permissions)
      fi = (FILE) Normal file
      ln = (SYMLINK, LINK, LNK)   Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
      mi = (MISSING)  Non-existent file pointed to by a symbolic link (visible when you type ls -l)
      no = (NORMAL, NORM) Normal (non-filename) text. Global default, although everything should be something
      or = (ORPHAN)   Symbolic link pointing to an orphaned non-existent file
      ow = (OTHER_WRITABLE)   Directory that is other-writable (o+w) and not sticky
      pi = (FIFO, PIPE)   Named pipe (fifo file)
      sg = (SETGID)   File that is setgid (g+s)
      so = (SOCK) Socket file
      st = (STICKY)   Directory with the sticky bit set (+t) and not other-writable
      su = (SETUID)   File that is setuid (u+s)
      tw = (STICKY_OTHER_WRITABLE)    Directory that is sticky and other-writable (+t,o+w)
      *.extension =   Every file using this extension e.g. *.rpm = files with the ending .rpm
      ```
    - `style`
      ```
      0   = default colour
      1   = bold
      4   = underlined
      5   = flashing text (disabled on some terminals)
      7   = reverse field (exchange foreground and background color)
      8   = concealed (invisible)
      ```
      We could have compound styles, e.g. `di=1;4;31;42`.
    - `color`
      ```
      30  = black
      31  = red
      32  = green
      33  = orange
      34  = blue
      35  = purple
      36  = cyan
      37  = grey
      90  = dark grey
      91  = light red
      92  = light green
      93  = yellow
      94  = light blue
      95  = light purple
      96  = turquoise
      97  = white
      ```
      Note that there are 8 + 8 = 16 of them, the thirties and nineties,
      for reasons of which I am ignorant.
    - `background`
      ```
      40  = black background
      41  = red background
      42  = green background
      43  = orange background
      44  = blue background
      45  = purple background
      46  = cyan background
      47  = grey background
      100 = dark grey background
      101 = light red background
      102 = light green background
      103 = yellow background
      104 = light blue background
      105 = light purple background
      106 = turquoise background
      107 = white background
      ```
      Similar to color, there are 8 + 8 = 16 backgrounds.
