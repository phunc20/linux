### Not able to type in other im than English?
By default, after installing, say, <code>ibus-unikey</code> or <code>ibus-libpinyin</code> and then make the necessary configuration in <code>ibus-setup</code>, you should be able to type in those languages <b>on a terminal emulator</b>.

However, when it comes to a <b>browser</b>. You'll most likely find yourself incapable of typing in other input method than shere English.

To solve this, on a Manjaro xfce, you should
- Put the following text inside <b>either <code>~/.bash_profile</code> or <code>~/.bashrc</code></b> (Note that it seems that for Manjaro xfce <code>~/.profile</code> <b>has no effect</b> whatsoever)
- (Found on [https://wiki.archlinux.org/index.php/IBus](https://wiki.archlinux.org/index.php/IBus))
```bash
export GTK_IM_MODULE=ibus
export QT4_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=ibus
```




