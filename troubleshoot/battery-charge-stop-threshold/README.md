## Thinkpad battery
According to my own experience,
- thinkpads newer than (including) X220, after installing Arch Linux, will have the files `/sys/class/power_supply/BAT0/charge_stop_threshold` and `/sys/class/power_supply/BAT0/charge_start_threshold` which contain a single line of text with a number in them (in the range `[0..100]`). One can directly modified these numbers to cater to one's requests.
- Older thinkpads (e.g. x200, x60, etc.) when accessing these files (They still exist on these machines) will report sth like `No such device`
  - access try
  ```bash
  ~ ❯❯❯ ls /sys/class/power_supply/BAT0/charge_stop_threshold
  /sys/class/power_supply/BAT0/charge_stop_threshold
  ~ ❯❯❯ cat /sys/class/power_supply/BAT0/charge_stop_threshold
  cat: /sys/class/power_supply/BAT0/charge_stop_threshold: No such device
  ```
  - **workaround**: **`pacman -S tp_smapi`**
  ```bash
  ~ ❯❯❯ lsmod | grep tp_sm
  tp_smapi               40960  0
  thinkpad_ec            16384  1 tp_smapi
  ~ ❯❯❯ lsmod | grep hdaps
  ~ ❯❯❯ ls /sys/devices/platform/smapi/
  ac_connected     BAT1/            driver_override  power/           subsystem/
  BAT0/            driver/          modalias         smapi_request    uevent
  ~ ❯❯❯ ll /sys/devices/platform/smapi/BAT0/start_charge_thresh
  -rw-r--r-- 1 root root 4096 Dec 18 04:25 /sys/devices/platform/smapi/BAT0/start_charge_thresh
  ~ ❯❯❯ cat /sys/devices/platform/smapi/BAT0/start_charge_thresh
  96
  ~ ❯❯❯ echo 40 > /sys/devices/platform/smapi/BAT0/start_charge_thresh
  -bash: /sys/devices/platform/smapi/BAT0/start_charge_thresh: Permission denied
  ~ ❯❯❯ sudo echo 40 > /sys/devices/platform/smapi/BAT0/start_charge_thresh
  -bash: /sys/devices/platform/smapi/BAT0/start_charge_thresh: Permission denied
  ~ ❯❯❯ echo 40 | sudo tee /sys/devices/platform/smapi/BAT0/start_charge_thresh
  40
  ~ ❯❯❯ cat /sys/devices/platform/smapi/BAT0/start_charge_thresh
  40
  ~ ❯❯❯ echo 80 | sudo tee /sys/devices/platform/smapi/BAT0/stop_charge_thresh
  80
  ~ ❯❯❯ cat /sys/devices/platform/smapi/BAT0/stop_charge_thresh
  80
  ```

