In a script, one can create variables (like below: `x=10`). If that script
is to be `source`d, and that particular variable is only to be used exclusively
**inside** the script, then one can `unset` it after its usgae in the script.

For example,
```bash
phunc20@cingular-x61s:~/corbeille$ echo $x

phunc20@cingular-x61s:~/corbeille$ echo x=10 > temp
phunc20@cingular-x61s:~/corbeille$ cat temp
x=10
phunc20@cingular-x61s:~/corbeille$ source temp
phunc20@cingular-x61s:~/corbeille$ echo $x
10
phunc20@cingular-x61s:~/corbeille$ echo unset x >> temp
phunc20@cingular-x61s:~/corbeille$ cat temp
x=10
unset x
phunc20@cingular-x61s:~/corbeille$ source temp
phunc20@cingular-x61s:~/corbeille$ echo $x

phunc20@cingular-x61s:~/corbeille$
```

