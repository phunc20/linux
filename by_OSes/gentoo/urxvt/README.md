### Font and Background Color
Cái font chữ với màu nèn mặt định của <code>urxvt</code>are hard to read. To change them, emerge the <code>urxvt</code> with <code><b>xft</b></code> <code>USE</code> flag, e.g. as follows:
<pre>
sudo USE=xft emerge -a x11-terms/rxvt-unicode
</pre>

The settings of <code>urxvt</code> are meant to be specified in <code><b>~/.Xresources</b></code> (although the exact path may be configurable); after editing this file, don't forget to 
<pre>
xrdb ~/.Xresources
</pre>
in order to have it take effect. (Or you might as well, if you are a <code>vim</code> user, have this command automatically executed each time you save <code>~/.Xresources</code>)


### A Simple Example of <code>~/.Xresources</code>
<pre>
URxvt.font: xft:Liberation Mono:size=18

*foreground: #93a1a1
!*background: #141c21
*background: #c8c8c8
*.cursorColor: #afbfbf
</pre>
