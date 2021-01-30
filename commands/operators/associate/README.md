## When chained together
We've seen `||` and `&&` used alone; what if we chain a whole lot of them
altogether? In what sense should we interpret them? Read the following
example to have a basic understanding of this.

```bash
phunc20@cingular-x61s:~$ false
phunc20@cingular-x61s:~$ echo $?
1
phunc20@cingular-x61s:~$ true
phunc20@cingular-x61s:~$ echo $?
0
phunc20@cingular-x61s:~$ true && false || echo 0
0
phunc20@cingular-x61s:~$ false && false || echo 0
0
phunc20@cingular-x61s:~$
```

So it seems that `bash` associates a chained expression like `expr1 && expr2 || expr3` from
left to right, i.e. **`(expr1 && expr2) || expr3`**.

Indeed, we can add **parentheses** to have control over the order of the expressions.

```bash
phunc20@cingular-x61s:~$ false && (false || echo 0)
phunc20@cingular-x61s:~$ true && (false || echo 0)
0
phunc20@cingular-x61s:~$ (false && false) || echo 0
0
phunc20@cingular-x61s:~$ true && true && echo 1 && false && echo 2
1
phunc20@cingular-x61s:~$ true && true && echo 1 && false || echo 2
1
2
phunc20@cingular-x61s:~$
```

Note that we have also sort of verified what we said above about the order:
- `true && true && echo 1 && false && echo 2` is equiv. to `(((true && true) && echo 1) && false) && echo 2`
- `true && true && echo 1 && false || echo 2` is equiv. to `(((true && true) && echo 1) && false) || echo 2`
