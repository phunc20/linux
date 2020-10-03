## How to NOT use <code>xfce</code> (e.g. using suckless dwm only)?
I am not exactly sure of this, but so far I found that <b>disabling</b> the service of <code><b>lightdm</b></code> is one way:
> <code><b>sudo systemctl disable lightdm</b></code>. Then <code>reboot</code> and next time you boot into Manjaro, there'll be no more <code>xfce</code>

By the way, <code>lightdm</code> is named so because it aims to be a light-weighted desktop manager.
