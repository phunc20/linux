


## Formated String
How does <code>bash</code> do format string like in <code>python</code>?

```bash
[phunc20@artichaut-x220 printf]$ printf "%03d\n" 255 0xff 124501293 3 -1
255
255
124501293
003
-01
[phunc20@artichaut-x220 printf]$ printf "%3d\n" 255 0xff 124501293 3 -1
255
255
124501293
  3
 -1

```

Another example,
```bash
[phunc20@artichaut-x220 fsoft]$ CAPACITY=61
[phunc20@artichaut-x220 fsoft]$ printf "%3d\n" $CAPACITY
 61
[phunc20@artichaut-x220 fsoft]$ CAPACITY=100
[phunc20@artichaut-x220 fsoft]$ printf "%3d\n" $CAPACITY
100
```

Yet another,
```bash
[phunc20@homography-x220t ~]$ printf %4d 10
  10[phunc20@homography-x220t ~]$ printf %04d 10
0010[phunc20@homography-x220t ~]$ printf %04d "10\n"
bash: printf: 10\n: invalid number
0010[phunc20@homography-x220t ~]$ printf %04d 10 \n
bash: printf: n: invalid number
00100000[phunc20@homography-x220t ~]$ printf %04d 10\n
bash: printf: 10n: invalid number
0010[phunc20@homography-x220t ~]$ printf %04d\n 10
0010n[phunc20@homography-x220t ~]$ printf "%04d\n" 10
0010
[phunc20@homography-x220t ~]$ printf "%04d is not equal to %a5d\n" 10 100
0010 is not equal to 0xc.8p+35d
[phunc20@homography-x220t ~]$ printf "%04d is not equal to %5d\n" 10 100
0010 is not equal to   100
[phunc20@homography-x220t ~]$ printf "%04d is not equal to %x5d\n" 10 100
0010 is not equal to 645d
[phunc20@homography-x220t ~]$ printf "%04d is not equal to %z5d\n" 10 100
bash: printf: `5': invalid format character
0010 is not equal to [phunc20@homography-x220t ~]$ printf "%04d is not equal to %07d\n" 10 100
0010 is not equal to 0000100
```


