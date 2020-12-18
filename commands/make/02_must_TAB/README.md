## The simplest `makefile` will have a content like
```
target: prerequisites
<TAB>recipe
```
The `<TAB>` **cannot** be replaced by anything else, neither two spaces, nor anything else; must be a `<TAB>`

For example, had we wrote 4 spaces instead of a `<TAB>`, we'd get
```bash
leif@CenterLap-x1carbon ~/git-repos/phunc20/linux/commands/make/02_must_TAB $ make
makefile:2: *** missing separator.  Stop.
```

In contrast, 2 or more `<TAB>`'s are also fine. Furthermore, as long as there is a leading `<TAB>`, after that
it can also be any number of spaces you like, `make` still runs on these kinds of files.
