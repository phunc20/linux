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


```bash
~/desktop/python ❯❯❯ sudo -u http stat /home/phunc20/desktop/go/hugo/quickstart/public
stat: cannot statx '/home/phunc20/desktop/go/hugo/quickstart/public': Permission denied
~/desktop/python ❯❯❯ sudo -u root stat /home/phunc20/desktop/go/hugo/quickstart/public
  File: /home/phunc20/desktop/go/hugo/quickstart/public
  Size: 4096            Blocks: 8          IO Block: 4096   directory
Device: 8,2     Inode: 29401312    Links: 7
Access: (0755/drwxr-xr-x)  Uid: ( 1000/ phunc20)   Gid: (  998/   wheel)
Access: 2024-10-03 11:50:35.676576863 +0800
Modify: 2024-10-02 23:48:33.556557976 +0800
Change: 2024-10-02 23:48:33.552261980 +0800
 Birth: 2024-09-30 21:51:01.525477686 +0800

```
