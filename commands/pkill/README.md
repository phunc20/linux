## The exit code

```bash
~ ❯❯❯ mpv ~/music/favorite.mp4
~ ❯❯❯ pkill mpv
~ ❯❯❯ echo $?
0
~ ❯❯❯ pkill mpv
~ ❯❯❯ echo $?
1
~ ❯❯❯
```
