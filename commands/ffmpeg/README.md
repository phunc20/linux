
```bash
ffmpeg -i "$video" -r 2 "$dirname/%4d.jpg"
```

## Refs
- <https://wiki.archlinux.org/title/FFmpeg>
- <https://trac.ffmpeg.org/wiki>


## Number of Threads
`-threads <number>`


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

_N.B._ To trimm faster and lighter (in terms of file size), you can try the option
`-c copy`. This is what Gemini 1.5 Flash told me

> Use `-c copy` (if possible): This option tells FFmpeg to copy the video and audio
> streams directly without re-encoding. This is the most effective way
> to prevent file size increases during trimming. However, it might not be compatible
> with all file formats or if you need to make any other adjustments to the video.


## Video to `gif`
```bash
ffmpeg -i example.mp4 output.gif
```


## screencast
**`ffmpeg -y -f x11grab -s 1280x800 -i :0.0 -f pulse -i default out.mp4`**


## merge video and audio
**`ffmpeg -i video.mp4 -i audio.wav -c:v copy -c:a aac output.mp4`**


## Lower Quality
```bash
ffmpeg -i input.mp4 -vcodec libx265 -crf 28 output.mp4
```


## Thumbnail
```bash
ffmpeg -i share_fraud.mp4 -ss 00:03:10.000 -vframes 1 thumbnail.png
```
