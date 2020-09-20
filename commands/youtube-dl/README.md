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
