```
       seq [OPTION]... LAST
       seq [OPTION]... FIRST LAST
       seq [OPTION]... FIRST INCREMENT LAST
```
```sh
~/.../commands/mv/corbeille$ seq 5
1
2
3
4
5
~/.../commands/mv/corbeille$ seq 99 100
99
100
~/.../commands/mv/corbeille$ seq -2 -7
~/.../commands/mv/corbeille$ seq -7 -2
-7
-6
-5
-4
-3
-2
~/.../linux/commands/seq$ seq 1 2 10
1
3
5
7
9
~/.../linux/commands/seq$ seq 2 2 10
2
4
6
8
10
~/.../linux/commands/seq$ seq -w 10
01
02
03
04
05
06
07
08
09
10
~/.../linux/commands/seq$ seq --separator=',' 10
1,2,3,4,5,6,7,8,9,10
~/.../linux/commands/seq$ seq -s ',' 10
1,2,3,4,5,6,7,8,9,10
~/.../linux/commands/seq$ seq -w -s , 10
01,02,03,04,05,06,07,08,09,10
```
