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

## Open Another Process to `kill`
```bash
~$ sleep 10s && pkill watch &
[1] 13525
~$ watch -n 1 free -h
[1]+  Done                    sleep 10s && pkill watch
~$
```
