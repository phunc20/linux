On parabola, one cannot seem to be able to `pgrep iceweasel` :

However, try **`pgrep Web`**

```bash
[phunc20@tako-x60 ~]$ pgrep Web
605
676
858
1188
1215
[phunc20@tako-x60 ~]$ pgrep -a Web
605 /usr/lib/iceweasel/iceweasel -contentproc -childID 1 -isForBrowser -prefsLen 1 -prefMapSize 222405 -parentBuildID 20201017214150 -appdir /usr/lib/iceweasel/browser 552 tab
676 /usr/lib/iceweasel/iceweasel -contentproc -childID 2 -isForBrowser -prefsLen 5953 -prefMapSize 222405 -parentBuildID 20201017214150 -appdir /usr/lib/iceweasel/browser 552 tab
858 /usr/lib/iceweasel/iceweasel -contentproc -childID 5 -isForBrowser -prefsLen 7954 -prefMapSize 222405 -parentBuildID 20201017214150 -appdir /usr/lib/iceweasel/browser 552 tab
1188 /usr/lib/iceweasel/iceweasel -contentproc -childID 8 -isForBrowser -prefsLen 8828 -prefMapSize 222405 -parentBuildID 20201017214150 -appdir /usr/lib/iceweasel/browser 552 tab
1215 /usr/lib/iceweasel/iceweasel -contentproc -childID 9 -isForBrowser -prefsLen 8877 -prefMapSize 222405 -parentBuildID 20201017214150 -appdir /usr/lib/iceweasel/browser 552 tab
[phunc20@tako-x60 ~]$ pgrep -a iceweas
[phunc20@tako-x60 ~]$ pgrep -a iceweasel
[phunc20@tako-x60 ~]$
```
