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


## `set -e`
The following bash script
```bash
set -e
echo "(Before)"
false
echo $?
echo "(After)"
```
gives stdout
```
(Before)
```

whereas this one
```bash
echo "(Before)"
false
echo $?
echo "(After)"
```
gives
```
(Before)
1
(After)
```
