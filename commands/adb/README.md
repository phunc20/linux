


- On the Android phone side
    1. tap and turn on **developper mode**
    1. Turn on **USB debugging**
- `sudo adb devices`
- `adb kill-server`
- `adb shell` 後面可以接所有你想得到的 command
    - Example 1
      ```bash
      $ adb shell ls /sdcard/DCIM/Camera`
      ```
    - Example 2
      ```bash
      $ adb shell du -hsx /sdcard/DCIM
      47G     /sdcard/DCIM
      ```
    - Example 3
      ```bash
      $ adb shell ls /sdcard/Movies | wc -l
      22
      ```
- `adb pull -a <folder_or_file_on_android> <somewhere_on_laptop>`
    - e.g. `adb pull -a /sdcard/DCIM ~/cell-phones/pixel/8/sdcard/`
    - `-a` is there to keep the creation time of the files
- `adb push <somewhere_on_laptop> <folder_or_file_on_android>`



Essentially, in a Pixel phone the only data you want to back up are those under
`/sdcard/` aka `/storage/self/primary` or `/storage/emulated/0`.

```bash
$ sudo adb shell ls -la /storage/self
total 0
drwxr-xr-x 2 root  root      60 2025-06-16 08:59 .
drwx--x--- 4 shell everybody 80 2025-06-16 08:59 ..
lrwxrwxrwx 1 root  root      19 2025-06-16 08:59 primary -> /storage/emulated/0
$ sudo adb shell ls -la /sdcard
lrw-r--r-- 1 root root 21 2009-01-01 08:00 /sdcard -> /storage/self/primary
$ sudo adb shell ls -la /storage/self/primary
lrwxrwxrwx 1 root root 19 2025-06-16 08:59 /storage/self/primary -> /storage/emulated/0
$ sudo adb shell ls -la /storage/self/
total 0
drwxr-xr-x 2 root  root      60 2025-06-16 08:59 .
drwx--x--- 4 shell everybody 80 2025-06-16 08:59 ..
lrwxrwxrwx 1 root  root      19 2025-06-16 08:59 primary -> /storage/emulated/0
$ sudo adb shell ls -la /storage/emulated
total 10
drwxrws--- 17 media_rw media_rw 3452 2025-02-12 00:17 0
drwxrwx---  2 media_rw media_rw 3452 2024-06-30 12:51 obb
$ sudo adb shell ls -la /storage/emulated/obb
total 0
```
