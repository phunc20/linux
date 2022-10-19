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

The same `unset` command can be used to unset function names, e.g.
you'd written a function in a script named `wifi_pass` which was
sourced in `.bashrc`, but later on you feel that you don't like
the underscore sign and prefer hyphen: `wifi-pass` instead.

You can certainly modify the script and re-source it, but that won't
make `wifi_pass` go away (e.g. when you type `wifi` and press Tab key,
your computer will still suggest you `wifi_pass`). You can
```bash
$ unset wifi_pass
```

`unalias` is sth similar but for aliases.
