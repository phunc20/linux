
```bash
ffmpeg -i "$video" -r 2 "$dirname/%4d.jpg"
```

## Cut
- Use `-ss` to specify **the starting point**
    - Omit `-ss` if the starting point is from the start of the video, i.e. `00:00:00`
- Use `-t` to specify **the duration**
- Use `-to` to specify **the endpoint**
- Omit `-t` and `-to` if you want to cut until the end of the original video
```bash
# -t specifies DURATION! Not endpoint!
ffmpeg -i movie.mp4 -ss 00:00:03 -t 00:00:08 -async 1 cut.mp4
# If you want to crop until the end, just omit specifying -t
ffmpeg -i movie.mp4 -ss 00:00:03 -async 1 cut.mp4
```


## Video to `gif`
```bash
ffmpeg -i example.mp4 output.gif
```

## screencast
**`ffmpeg -y -f x11grab -s 1280x800 -i :0.0 -f pulse -i default out.mp4`**

## merge video and audio
**`ffmpeg -i video.mp4 -i audio.wav -c:v copy -c:a aac output.mp4`**
