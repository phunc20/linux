### `# Threads` on your machine?
The command `lscpu` can answer this question, although at first glance the output of this command
might appear somewhat timidating.

Chúng ta xem trước một vài ví dụ: (Vì stdout của lệnh `lscpu` hơi dài, mình chỉ hiển thị khúc đầu thôi.)
- Thinkpad X420
  ```bash
  [phunc20@mushroom-x200 ~]$ lscpu
  Architecture:                    x86_64
  CPU op-mode(s):                  32-bit, 64-bit
  Byte Order:                      Little Endian
  Address sizes:                   36 bits physical, 48 bits virtual
  CPU(s):                          4
  On-line CPU(s) list:             0-3
  Thread(s) per core:              2
  Core(s) per socket:              2
  Socket(s):                       1
  NUMA node(s):                    1
  Vendor ID:                       GenuineIntel
  CPU family:                      6
  Model:                           42
  Model name:                      Intel(R) Core(TM) i5-2520M CPU @ 2.50GHz
  Stepping:                        7
  CPU MHz:                         1163.060
  CPU max MHz:                     3200.0000
  CPU min MHz:                     800.0000
  ```
- Thinkpad X200
- Aero15X
  ```bash
  ~/git-repos/phunc20 ❯❯❯ lscpu
  Architecture:                    x86_64
  CPU op-mode(s):                  32-bit, 64-bit
  Byte Order:                      Little Endian    
  Address sizes:                   39 bits physical, 48 bits virtual
  CPU(s):                          12
  On-line CPU(s) list:             0-11
  Thread(s) per core:              2
  Core(s) per socket:              6
  Socket(s):                       1
  NUMA node(s):                    1
  Vendor ID:                       GenuineIntel
  CPU family:                      6
  Model:                           158
  Model name:                      Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz
  Stepping:                        10
  CPU MHz:                         800.159
  CPU max MHz:                     4100.0000
  CPU min MHz:                     800.0000
  ```


As one can observe,
- `# Socket(s) = Socket(s):` 
- `# Core(s) = Socket(s) * (Core(s) per socket)` 
- `# Thread(s) = CPU(s) = (# Core(s)) * (Thread(s) per core)`
