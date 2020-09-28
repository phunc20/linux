### It might happen when you find you simply can't <code>mpv \<URL\></code>
Well, the **most possible reason** is that
> <code>mpv</code>, when its argument is an (YouTube) URL, it needs <code>youtube-dl</code> to be able to stream it. (I guess the mechanism was to download it, at least part of it, and streaming it at the same time.)

As a consequence, if you chose to install <code>youtube-dl</code> in a Python virtual environment, then you need to <b>activate</b> that particular environment before being able to use <code>mpv \<URL\></code>.








