## To Have Both Screens Fit to Full View
one might have to find a permissible <b>common</b> resolution. You can type <code><b>xrandr</b></code> to the command line to find out the permissible resolutions.
<pre>
# For example, on x220 and the screen of the desktop at FSOFT
xrandr --output LVDS1 --mode 1280x720
xrandr --output VGA1 --mode 1280x720
</pre>
