


- `pv` is somewhat like `cat` in that, when its input (stdin) is a file, it will simply print
  the content of the file to stdout, and a progress bar at the end to stderr.
  ```bash
  $ pv ~/.vimrc > /dev/null
  4.18KiB 0:00:00 [28.7MiB/s] [==========================================================>] 100%
  $ pv <(tail -5 ~/.vimrc)
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
  augroup END
   118 B 0:00:00 [55.4KiB/s] [  <=>                                                       ]
  $ pv <(lsblk)
  NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
  sda      8:0    0 931.5G  0 disk
  ├─sda1   8:1    0    96G  0 part /
  └─sda2   8:2    0 835.5G  0 part /home
   161 B 0:00:00 [9.99KiB/s] [  <=>                                                       ]
  ```
- One can also pipe into `pv`:
  ```bash
  $ tail -5 ~/.vimrc | pv
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
  augroup END
   118 B 0:00:00 [ 685KiB/s] [  <=>                                                       ]
  ```
