## `xrdb`
`xrdb` seems to be a command related to the file `~/.Xresources`

```bash
leif@CenterLap-x1carbon /etc/fonts $ xrdb -query
Sxiv.background:        #000000
URxvt.font:     xft:Liberation Mono:size=18
*foreground:    #93a1a1
*background:    #141c21
*.cursorColor:  #afbfbf
*.color0:       #263640
*.color8:       #4a697d
*.color1:       #d12f2c
*.color9:       #fa3935
*.color2:       #819400
*.color10:      #a4bd00
*.color3:       #b08500
*.color11:      #d9a400
*.color4:       #2587cc
*.color12:      #2ca2f5
*.color5:       #696ebf
*.color13:      #8086e8
*.color6:       #289c93
*.color14:      #33c5ba
*.color7:       #bfbaac
*.color15:      #fdf6e3
leif@CenterLap-x1carbon /etc/fonts $ cat ~/.Xresources
!Sxiv.background: #003000
!Sxiv.background: #000300
!Sxiv.background: #AAAAAA
Sxiv.background: #000000

URxvt.font: xft:Liberation Mono:size=18
!URxvt.font: 9x15

! special
*foreground: #93a1a1
*background: #141c21
!*background: #c8c8c8
*.cursorColor: #afbfbf

! black
*.color0: #263640
*.color8: #4a697d

! red
*.color1: #d12f2c
*.color9: #fa3935

! green
*.color2: #819400
*.color10: #a4bd00

! yellow
*.color3: #b08500
*.color11: #d9a400

! blue
*.color4: #2587cc
*.color12: #2ca2f5

! magenta
*.color5: #696ebf
*.color13: #8086e8

! cyan
*.color6: #289c93
*.color14: #33c5ba

! white
*.color7: #bfbaac
*.color15: #fdf6e3

!URxvt.font: -*-rissole-*
!URxvt.boldFont: -*-rissole-*
!URxvt.italicFont: -*-rissole-*
!URxvt.boldItalicfont: -*-rissole-*
!URxvt.letterSpace: 0
!URxvt.lineSpace: 0
!URxvt.geometry: 92x24
!URxvt.internalBorder: 24
!URxvt.cursorBlink: true
!URxvt.cursorUnderline: false
!URxvt.saveline: 2048
!URxvt.scrollBar: false
!URxvt.scrollBar_right: false
!URxvt.urgentOnBell: true
!URxvt.depth: 24
!URxvt.iso14755: false
leif@CenterLap-x1carbon /etc/fonts $
```

## Linux Gui's fontsize
Linux Gui's fontsize can be adjusted thru the file **`~/.Xresources`** via the line **`Xft.dpi: 128`** (the `128` being just an example).

## Reload `~/.Xresources` after `vim` editing it
Add the following line to `vimrc` (for `vim` or `gvim`) or `init.vim` (for `neovim`), which means _whenever the file `~/.Xresources` is modified, restart the process `xrdb`_:
```
autocmd BufWritePost ~/.Xresources !xrdb ~/.Xresources
```

