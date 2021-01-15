
## Appending instead
**`tee -a <file>`**

## Use cases
01. When writing/appending to a file using `echo` or `printf` by a user not having the write permission: e.g. **`echo 80 | sudo tee /sys/class/power_supply/BAT0/charge_stop_threshold`**


## Suppressing the output to `stdout`
How to further suppress the output to `stdout` when using `tee`?
- Put the famous `> /dev/null` at the end, e.g. **`echo 80 | sudo tee /sys/class/power_supply/BAT0/charge_stop_threshold > /dev/null`**


