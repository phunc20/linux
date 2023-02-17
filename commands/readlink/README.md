It seems that symlinks are simply files whose content are path to the files
they link to:

```bash
$ ln -s ~/corbeille/trash.py ./
$ ls
trash.py
$ readlink trash.py
/home/phunc20/corbeille/trash.py
```


## Ref.
- <https://stackoverflow.com/questions/954560/how-does-git-handle-symbolic-links/18791647#18791647>

