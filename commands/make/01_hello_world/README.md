## The simplest `makefile` will have a content like
```
target: prerequisites
<TAB>recipe
```

For example,

```bash
leif@CenterLap-x1carbon ~/git-repos/phunc20/linux/commands/make/01_hello_world $ make
echo Hello Welt
Hello Welt
leif@CenterLap-x1carbon ~/git-repos/phunc20/linux/commands/make/01_hello_world $ cat makefile
say_hello:
        echo Hello Welt
```
