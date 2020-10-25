
```bash
ffmpeg -i "$video" -r 2 "$dirname/%4d.jpg"
```


```bash
# -t specifies DURATION! Not endpoint!
ffmpeg -i movie.mp4 -ss 00:00:03 -t 00:00:08 -async 1 cut.mp4
```
