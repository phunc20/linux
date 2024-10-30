## Example
```bash
yt-dlp -f "bv[filesize<80M]+ba[filesize<20M]" --remux-video "mp4" --write-thumbnail <url>
```

Explanation:
- `-f "bv[filesize<80M]+ba[filesize<20M]"`: Find formats of
    - best video with file size less than 80MB
    - best audio with file size less than 20MB
    - Cf. <https://github.com/yt-dlp/yt-dlp/issues/9530>
- `--remux-video "mp4"` remuxes the resulting video and audio into MP4 format
- `--write-thumbnail` writes thumbnail image into the folder where you run
  the `yt-dlp` command


You can run
```bash
yt-dlp -F <url>
```
to show the available audio/video formats in the stdout.
