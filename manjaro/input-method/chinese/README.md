### On a Manjaro xfce of mine
to be able to type Chinese, <code><b>sudo pacman -S ibus-libpinyin</b></code> alone <b>won't</b> suffice.

What happened was
- when we open <code>ibus-setup</code>
- we cannot even see an option for Chinese
- other im worked well, e.g. Vietnamese unikey (<code>sudo pacman -S ibus-unikey</code>) worked fine


#### Solution?
I don't know why, but after I installed
```bash
sudo pacman -S uim
```

It just <b>worked</b>!





