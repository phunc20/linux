## Subarray of The Array of Positional Parameters
In bash, subarrays are pretty similar to those in Python,
except that bash arrays are 1-indexed and Python 0-indexed.

The subarray syntax being

- `${array:start}`
    - If `start` equals `1`, it means **taking the whole array**
    - If `start` equals `2`, it means **taking the subarray starting from the 2nd element**
    - If `start` equals `-1`, it means **taking the subarray starting from the last element**
    - If `start` equals `-2`, it means **taking the subarray starting from the 2nd to last element**
- `${array:start:length}` means taking the subarray **starting from `start`** and
  **containing `length` parameters**

For example,
```shell
$ set -- arg1 arg2 arg3 arg4 arg5
$ echo $@
arg1 arg2 arg3 arg4 arg5
$ echo ${@:1}
arg1 arg2 arg3 arg4 arg5
$ echo ${@:2}
arg2 arg3 arg4 arg5
$ echo ${@:(-1)}
arg5
$ echo ${@:(-2)}
arg4 arg5
$ echo ${@:1:1}
arg1
$ echo ${@:1:2}
arg1 arg2
$ echo ${@:2:2}
arg2 arg3
$ echo ${@:3:2}
arg3 arg4
$ echo ${@:(-2):2}
arg4 arg5
```


**Rmk.**  
1. Actually, saying that Bash is 1-indexed is not entirely correct. There
   exists the 0-th parameter, which tells us about the shell being used:
   ```shell
   $ set -- arg1 arg2 arg3 arg4 arg5
   $ echo ${@:0}
   -bash arg1 arg2 arg3 arg4 arg5
   $ echo ${@:(-6)}
   -bash arg1 arg2 arg3 arg4 arg5
   $ echo ${@:(-7)}
   
   $ echo ${@:(-8)}
   
   $ 
   ```
1. When the assigned subarray length exceeds the allowed length, Bash is smart
   enough to take until the end:
   ```shell
   $ echo ${@:(-3):100}
   arg3 arg4 arg5
   $ echo ${@:4:999}
   arg4 arg5
   ```
1. Note that, for `start`, when it's a negative index, we have been surrounding it
   by **parentheses**. We could have taken off the parentheses, but then we'll
   need to **precede it with a space** character.
   ```shell
   $ echo ${@: -3:2}
   arg3 arg4
   $ echo ${@:-3:2}
   arg1 arg2 arg3 arg4 arg5
   ```
