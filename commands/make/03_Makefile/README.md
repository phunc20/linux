## `makefile` or `Makefile`
> Both are acceptable.

In contrast, `MakeFile, makeFile, MAKEFILE` are all inacceptable.
```bash
$ ls
makefile  README.md
$ make
echo Hello Welt
Hello Welt
$ mv makefile Makefile 
$ make
echo Hello Welt
Hello Welt
$ mv Makefile MakeFile
$ make
make: *** No targets specified and no makefile found.  Stop.
$ mv MakeFile MAKEFILE
$ make
make: *** No targets specified and no makefile found.  Stop.
```
