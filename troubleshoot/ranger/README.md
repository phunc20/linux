## When you install `nvim` but `ranger` tries to open text file by `vim`
A solution to this problem is to add the following line in, for example, `.profile` or `.bashrc`

```bash
export EDITOR=nvim
```

## `AssertionError: No directory given!`
You may encounter situations like the following when you run `ranger`
```bash
$ ranger
ranger version: ranger-master
Python version: 3.8.2 (default, Feb 26 2020, 22:21:03) [GCC 9.2.1 20200130]
Locale: en_IE.UTF-8

Traceback (most recent call last):
  File "/usr/lib/python3.8/site-packages/ranger/core/main.py", line 173, in main
    fm.initialize()
  File "/usr/lib/python3.8/site-packages/ranger/core/fm.py", line 127, in initialize
    self.bookmarks.load()
  File "/usr/lib/python3.8/site-packages/ranger/container/bookmarks.py", line 47, in load
    new_dict = self._load_dict()
  File "/usr/lib/python3.8/site-packages/ranger/container/bookmarks.py", line 237, in _load_dict
    dct[key] = self.bookmarktype(value)
  File "/usr/lib/python3.8/site-packages/ranger/container/directory.py", line 150, in __init__
    assert not os.path.isfile(path), "No directory given!"
AssertionError: No directory given!

ranger crashed. Please report this traceback at:
https://github.com/ranger/ranger/issues
```

[One solution I found](https://github.com/ranger/ranger/issues/1896) was to clean the content inside the file (i.e. make the file **empty**) `~/.local/share/ranger/bookmarks`


