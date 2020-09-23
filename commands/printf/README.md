


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



