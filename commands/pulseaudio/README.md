## Restart PulseAudio
```bash
# to kill pulseaudio  (it'll restart automatically)
pulseaudio -k
# in case it does not restart automatically
pulseaudio --start
```


## Echo Test
```bash
# To start
$ pactl load-module module-loopback
27
# To stop
$ pactl unload-module module-loopback
```
