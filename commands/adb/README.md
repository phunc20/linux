


- On the Android phone side
    1. tap and turn on **developper mode**
    1. Turn on **USB debugging**
- `sudo adb devices`
- `adb kill-server`
- `adb shell ls` to list files on the phone, e.g.
    - `adb shell ls /sdcard/DCIM/Camera`
- `adb pull -a <folder_or_file_on_android> <somewhere_on_laptop>`
    - e.g. `adb pull -a /sdcard/DCIM ~/cell-phones/pixel/8/sdcard/`
    - `-a` is there to keep the creation time of the files
- `adb push <somewhere_on_laptop> <folder_or_file_on_android>`




