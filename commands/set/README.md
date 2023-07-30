`set` can be used to change the positional parameters, e.g.

```shell
$ set -- arg1 arg2 arg3 arg4 arg5
$ echo $#
5
$ echo $@
arg1 arg2 arg3 arg4 arg5
$ set --
$ echo $#
0
$ echo $@

$ 
```

Recall that
- `$#` records the number of positional params
- `$@` records the positional params
