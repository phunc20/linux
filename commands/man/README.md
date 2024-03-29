# Linux Programmer's Manual

## Numbering
With the same command, we often see them followed by different numbers in
parentheses, e.g. `hostname(5)` and `hostname(7)`.

It seems that these are simply different commands(?).

To read their manuals, one can specify using either one of the following ways:
- `man <number> <command>`
- `man <command>.<number>`

Note that the numbering is often **not consecutive**.

For example,
```bash
$ man write
$ man 2 write
$ man write
$ man 3 write
$ man 4 write
No manual entry for write in section 4
$ man hostname.5
$ man hostname.1
$ man hostname.7
```

Another example in which specifying the number or not does not give the same
doc:
```bash
$ man signal
$ man 7 signal
```

A few more complex command examples:
```bash
$ man ip-link.8
$ man ip-address
$ man docker-run
```
