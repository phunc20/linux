## To Have Both Screens Fit to Full View
one might have to find a permissible **common** resolution. You can type <code><b>xrandr</b></code> to the command line to find out the permissible resolutions.
```bash
# For example, on x220 and the screen of the desktop at FSOFT
xrandr --output LVDS-1 --mode 1280x720
xrandr --output VGA-1 --mode 1280x720
```


## Adjust Brightness
```bash
xrandr --output LVDS-1 --brightness 0.5
```
