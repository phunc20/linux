
```bash
ffmpeg -i "$video" -r 2 "$dirname/%4d.jpg"
```


```bash
# -t specifies DURATION! Not endpoint!
ffmpeg -i movie.mp4 -ss 00:00:03 -t 00:00:08 -async 1 cut.mp4
```


## Video to `gif`
```bash
ffmpeg -i example.mp4 output.gif
```

## screencast
**`ffmpeg -y -f x11grab -s 1280x800 -i :0.0 -f pulse -i default out.mp4`**
