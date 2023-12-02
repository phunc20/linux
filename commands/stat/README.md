- Access/Modify/Change/Birth time of a file
  ```bash
  $ stat README.md
    File: README.md
    Size: 148             Blocks: 8          IO Block: 4096   regular file
  Device: 8,4     Inode: 5819664     Links: 1
  Access: (0644/-rw-r--r--)  Uid: ( 1000/ phunc20)   Gid: (  998/   wheel)
  Access: 2023-12-01 12:35:09.367385336 +0700
  Modify: 2023-12-01 12:35:09.367385336 +0700
  Change: 2023-12-01 12:35:09.367385336 +0700
   Birth: 2023-12-01 12:35:09.367385336 +0700
  ```
- With options one could limit the amount of info to stdout, e.g. printing only
  user id and group id:
  ```bash
  # MacOS
  $ stat -f %u:%g <folder/file>
  # Linux
  $ stat -c %u:%g <folder/file>
  ```
