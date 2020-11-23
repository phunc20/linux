## Specify format
- `youtube-dl -f 22 "https://www.youtube.com/watch?v=5Fh_d5LIlrw&list=PLil-R4o6jmGjoxAWZurHXAY0q9yxwXv5F&index=2"`
- `youtube-dl -f best "https://www.youtube.com/watch?v=5Fh_d5LIlrw&list=PLil-R4o6jmGjoxAWZurHXAY0q9yxwXv5F&index=2"`
- `youtube-dl -f 22/18 "https://www.youtube.com/watch?v=5Fh_d5LIlrw&list=PLil-R4o6jmGjoxAWZurHXAY0q9yxwXv5F&index=2"`


```bash
(dl) [phunc20@denjiro-x220 google]$ youtube-dl -f22 "https://www.youtube.com/watch?v=4XpnKHJAok8"
[youtube] 4XpnKHJAok8: Downloading webpage
ERROR: requested format not available
(dl) [phunc20@denjiro-x220 google]$ youtube-dl --all-formats --get-filename "https://www.youtube.com/watch?v=4XpnKHJAok8"
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.webm
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.webm
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.m4a
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.webm
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.mp4
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.mp4
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.webm
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.mp4
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.webm
Tech Talk - Linus Torvalds on git-4XpnKHJAok8.mp4
(dl) [phunc20@denjiro-x220 google]$ youtube-dl --format=mp4 "https://www.youtube.com/watch?v=4XpnKHJAok8"
[youtube] 4XpnKHJAok8: Downloading webpage
[download] Destination: Tech Talk - Linus Torvalds on git-4XpnKHJAok8.mp4
[download] 100% of 147.11MiB in 00:15
```


## Search for available formats/resolutions
- **`youtube-dl -F \<url\>`**

```bash
(youtube-dl) [phunc20@tako-x60 luke-smith]$ youtube-dl -F https://www.youtube.com/watch?v=-CiLU9-RAGk
[youtube] -CiLU9-RAGk: Downloading webpage
[info] Available formats for -CiLU9-RAGk:
format code  extension  resolution note
249          webm       audio only tiny   53k , opus @ 50k (48000Hz), 3.78MiB
250          webm       audio only tiny   69k , opus @ 70k (48000Hz), 4.81MiB
251          webm       audio only tiny  124k , opus @160k (48000Hz), 8.68MiB
140          m4a        audio only tiny  130k , m4a_dash container, mp4a.40.2@128k (44100Hz), 9.57MiB
160          mp4        256x144    144p   68k , avc1.4d400c, 30fps, video only, 2.30MiB
133          mp4        426x240    240p  122k , avc1.4d4015, 30fps, video only, 3.59MiB
278          webm       256x144    144p  125k , webm container, vp9, 30fps, video only, 5.96MiB
242          webm       426x240    240p  160k , vp9, 30fps, video only, 6.18MiB
134          mp4        640x360    360p  298k , avc1.4d401e, 30fps, video only, 6.38MiB
243          webm       640x360    360p  383k , vp9, 30fps, video only, 10.71MiB
135          mp4        854x480    480p  486k , avc1.4d401f, 30fps, video only, 9.46MiB
244          webm       854x480    480p  660k , vp9, 30fps, video only, 16.24MiB
136          mp4        1280x720   720p  977k , avc1.4d401f, 30fps, video only, 16.91MiB
247          webm       1280x720   720p 1381k , vp9, 30fps, video only, 29.05MiB
248          webm       1920x1080  1080p 2357k , vp9, 30fps, video only, 65.23MiB
137          mp4        1920x1080  1080p 2663k , avc1.640028, 30fps, video only, 47.29MiB
22           mp4        1280x720   720p  357k , avc1.64001F, 30fps, mp4a.40.2@192k (44100Hz)
18           mp4        640x360    360p  376k , avc1.42001E, 30fps, mp4a.40.2@ 96k (44100Hz), 27.82MiB (best)
(youtube-dl) [phunc20@tako-x60 luke-smith]$ youtube-dl -f 137 https://www.youtube.com/watch?v=-CiLU9-
RAGk
[youtube] -CiLU9-RAGk: Downloading webpage
[download] Destination: Wrap Your Brain around 'Patch' and 'Diff' on Linux--CiLU9-RAGk.mp4
[download] 100% of 47.29MiB in 00:39
(youtube-dl) [phunc20@tako-x60 luke-smith]$
```


	
