Wikipedia (<https://en.wikipedia.org/wiki/Xargs>) did a good job explaining `xargs`.

Here is a brief summary of it:
1. `xargs` (short for "e**x**tended **arg**ument**s**"
1. Some commands such as `grep` and `awk` can take input either as command-line arguments or from the standard input.
   However, others such as `cp` and `echo` can only take input as arguments, which is why xargs is necessary. E.g.
   ```bash
   $ touch bbc
   $ echo bbc cnn | cp
   cp: missing file operand
   Try 'cp --help' for more information.
   $ ls
   bbc
   $ echo bbc cnn | xargs cp
   $ ls
   bbc  cnn
   $ echo bbc cnn | echo
   
   $ echo bbc cnn | xargs echo
   bbc cnn
   ```
1. `ARG_MAX`; `Argument list too long`; using the `xargs` command to break the list of arguments into sublists small enough to be acceptable


