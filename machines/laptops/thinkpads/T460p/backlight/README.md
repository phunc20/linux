```bash
[phunc20@T460p ~]$ cat /sys/class/backlight/intel_backlight/
actual_brightness  brightness         max_brightness     scale              type
bl_power           device/            power/             subsystem/         uevent
[phunc20@T460p ~]$ cat /sys/class/backlight/intel_backlight/max_brightness
852
[phunc20@T460p ~]$ cat /sys/class/backlight/intel_backlight/brightness
277
[phunc20@T460p ~]$ echo 200 | sudo tee /sys/class/backlight/intel_backlight/brightness
200
[phunc20@T460p ~]$ echo 300 | sudo tee /sys/class/backlight/intel_backlight/brightness
300
[phunc20@T460p ~]$ echo 500 | sudo tee /sys/class/backlight/intel_backlight/brightness
500
[phunc20@T460p ~]$ echo 200 | sudo tee /sys/class/backlight/intel_backlight/brightness
200
```
