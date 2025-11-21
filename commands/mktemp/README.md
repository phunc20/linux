## About `/tmp/`
```bash
~ ❯❯❯ ls -dl /tmp/
drwxrwxrwt 16 root root 580 Jan  1 09:33 /tmp/
```
Despite the fact that `/tmp` belongs to group `root` and user `root`, since its permissions is **`drwxrwxrwt`** (Note that the **other user** part has full permission), any user can view the content of `/tmp/`
```bash
~ ❯❯❯ ls -l /tmp
total 98872
drwx------ 2 phunc20 wheel        60 Jan  1 09:24 nvim2OqYC7
drwx------ 2 phunc20 wheel        60 Jan  1 09:32 nvimX3G1Te
-rw------- 1 phunc20 wheel       177 Dec 31 20:53 serverauth.XCmjN3chis
drwx------ 3 root    root         60 Dec 31 20:52 systemd-private-e87ebee90ba046f8972050845fc23b90-systemd-logind.service-CQU9nf
drwx------ 3 root    root         60 Dec 31 20:52 systemd-private-e87ebee90ba046f8972050845fc23b90-systemd-timesyncd.service-jpGtVf
-rw------- 1 phunc20 wheel         3 Jan  1 00:49 tmp217fnwo_
-rw------- 1 phunc20 wheel         3 Jan  1 00:58 tmp61x03mf9
-rw------- 1 phunc20 wheel         3 Dec 31 23:48 tmp6a5e2hco
-rw------- 1 phunc20 wheel         3 Jan  1 00:58 tmp7lgb8jn7
-rw------- 1 phunc20 wheel         3 Jan  1 00:11 tmp_7n0b5tu
drwx------ 2 phunc20 wheel        60 Jan  1 09:17 tmp8w0c92qe
-rw------- 1 phunc20 wheel         3 Dec 31 23:48 tmpb6ewrzo3
drwx------ 2 phunc20 wheel        40 Jan  1 09:16 tmpbzrw767h
-rw------- 1 phunc20 wheel     28678 Jan  1 09:26 tmpd4n50jzk
-rw------- 1 phunc20 wheel         3 Jan  1 00:11 tmpjcbaqdtx
-rw------- 1 phunc20 wheel    283839 Jan  1 09:26 tmptohq2mw0
-rw------- 1 phunc20 wheel         3 Jan  1 00:49 tmpvf7213hz
-rw------- 1 phunc20 wheel 100885009 Jan  1 09:17 tmpy5tlcel_
drwx------ 2 phunc20 wheel        60 Dec 31 20:53 tmux-1000
drwxr-xr-x 2 phunc20 wheel        60 Dec 31 20:53 ueberzug
```
In contrast, for the files and folders inside `/tmp/`, whichever user created which file/folder will have its unique permission to them, just as the command above shows.


```bash
~/.../arch-linux/suckless/dwm ❯❯❯ rm /tmp/bbs*
~/.../arch-linux/suckless/dwm ❯❯❯ ls /tmp/bbs*
ls: cannot access '/tmp/bbs*': No such file or directory
~/.../arch-linux/suckless/dwm ❯❯❯ mktemp /tmp/bbs.XXXXX
/tmp/bbs.MxKQz
~/.../arch-linux/suckless/dwm ❯❯❯ mktemp /tmp/bbs.XXXXX
/tmp/bbs.MAqCw
~/.../arch-linux/suckless/dwm ❯❯❯ mktemp /tmp/bbs.XXXXX
/tmp/bbs.FFTKY
~/.../arch-linux/suckless/dwm ❯❯❯ ls /tmp/bbs*
/tmp/bbs.FFTKY  /tmp/bbs.MAqCw  /tmp/bbs.MxKQz
~/.../arch-linux/suckless/dwm ❯❯❯ ll /tmp/bbs*
-rw------- 1 phunc20 wheel 0 Nov  2 22:11 /tmp/bbs.MxKQz
-rw------- 1 phunc20 wheel 0 Nov  2 22:11 /tmp/bbs.MAqCw
-rw------- 1 phunc20 wheel 0 Nov  2 22:11 /tmp/bbs.FFTKY
~/.../arch-linux/suckless/dwm ❯❯❯ ll /tmp/
total 932
drwxr-xr-x 17 root    root    4096 Oct  2 22:47 ..
drwxrwxrwt  2 root    root      40 Nov  2 08:48 .XIM-unix
drwxrwxrwt  2 root    root      40 Nov  2 08:48 .Test-unix
drwxrwxrwt  2 root    root      40 Nov  2 08:48 .ICE-unix
drwxrwxrwt  2 root    root      40 Nov  2 08:48 .font-unix
drwx------  3 root    root      60 Nov  2 08:48 systemd-private-54d839ab3e024a088f7629b44c41e87e-systemd-logind.service-seXHyg
drwx------  2 phunc20 wheel     60 Nov  2 08:51 tmux-1000
drwx------  2 phunc20 wheel     80 Nov  2 10:34 jl_LBMpDj
drwx------  2 phunc20 wheel     40 Nov  2 10:39 jl_G3zLtV
drwx------  2 phunc20 wheel     40 Nov  2 10:39 jl_Pe39ol
drwx------  2 phunc20 wheel     80 Nov  2 10:42 .org.chromium.Chromium.mp7uZb
drwx------  2 phunc20 wheel     80 Nov  2 10:44 jl_3FFTv4
-rw-r--r--  1 phunc20 wheel 938991 Nov  2 10:45 jl_Sx18w5
drwx------  2 phunc20 wheel     40 Nov  2 10:47 jl_X8Xkpl
drwx------  2 phunc20 wheel     40 Nov  2 10:47 jl_sF83Mm
drwx------  2 phunc20 wheel     40 Nov  2 10:47 jl_dWJ8yn
drwx------  2 phunc20 wheel     40 Nov  2 10:47 jl_JvLVsk
drwx------  2 phunc20 wheel     40 Nov  2 10:48 jl_Zj9wnl
drwx------  2 phunc20 wheel     40 Nov  2 10:48 jl_q7yIZj
drwxr-xr-x  2 phunc20 wheel    100 Nov  2 11:34 ueberzug
drwx------  2 phunc20 wheel     60 Nov  2 21:57 nvimCQDgTc
-rw-------  1 phunc20 wheel    118 Nov  2 22:09 serverauth.yUAy7ewJw5
drwxrwxrwt  2 root    root      60 Nov  2 22:09 .X11-unix
-r--r--r--  1 phunc20 wheel     11 Nov  2 22:09 .X0-lock
drwx------  2 phunc20 wheel     80 Nov  2 22:09 .org.chromium.Chromium.Sghxz6
drwx------  2 phunc20 wheel     60 Nov  2 22:10 nvimldqDaf
-rw-------  1 phunc20 wheel      0 Nov  2 22:11 bbs.MxKQz
-rw-------  1 phunc20 wheel      0 Nov  2 22:11 bbs.MAqCw
-rw-------  1 phunc20 wheel      0 Nov  2 22:11 bbs.FFTKY
drwxrwxrwt 24 root    root     600 Nov  2 22:11 .
~/.../


```



```
mktemp -p ./ --suffix=.mp4 "${string:offset:length}.XXX"
```
