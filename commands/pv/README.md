


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
  Or for sth that lasts longer/forever
  ```bash
  $ cat /dev/random | pv
  22GiB 0:00:22 [ 336MiB/s] [                                            <=>              ]
  ```
- A practical usecase is to count down, e.g. count down 1800 seconds (i.e. 30 minutes) before shutting down the machine
  ```bash
  yes | pv -SL1 -F "poweroff in %e" -s 1800 > /dev/null && poweroff
  ```
  
  Explanation.
    - `yes` exists as a command; `yes | pv` simply pipes a lot of `"y"'s` string to `pv`
    - `-SL1` means 1 byte per second
    - `-F "poweroff in %e"` sets the format for the string printed in stderr
    - `-s 1800` sets the total amount of data to be transferred, here 1800 bytes, according to which the progress bar
      is updated as well
    - `> /dev/null` redirects the stdout to `/dev/null`, the black whole of Linux
    - Processing 1800 bytes with the rate of 1 byte/s costs 1800 seconds, i.e. 30 minutes
    - Once all the above is done (right), turn off the machine `&& poweroff`
