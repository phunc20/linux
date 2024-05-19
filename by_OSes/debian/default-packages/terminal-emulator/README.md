## How to find out the default terminal emulator?
Find it out and uninstall it.

```bash
phunc20@cingular-x61s:~$ pgrep -a terminal
1630 xfce4-terminal
phunc20@cingular-x61s:~$ sudo apt purge xfce4-terminal
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following packages were automatically installed and are no longer required:
hddtemp libqrencode4 libunique-1.0-0 libxnvctrl0 ristretto xfce4-battery-plugin xfce4-clipman
  xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-datetime-plugin
  xfce4-diskperf-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-mailwatch-plugin
  xfce4-netload-plugin xfce4-notes xfce4-notes-plugin xfce4-places-plugin xfce4-screenshooter
  xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-taskmanager
  xfce4-timer-plugin xfce4-verve-plugin xfce4-wavelan-plugin xfce4-weather-plugin
  xfce4-whiskermenu-plugin xfce4-xkb-plugin
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  xfce4-goodies* xfce4-terminal*
0 upgraded, 0 newly installed, 2 to remove and 69 not upgraded.
After this operation, 2,303 kB disk space will be freed.
Do you want to continue? [Y/n] n
Abort.
phunc20@cingular-x61s:~$ sudo apt remove xfce4-terminal
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following packages were automatically installed and are no longer required:
  hddtemp libqrencode4 libunique-1.0-0 libxnvctrl0 ristretto xfce4-battery-plugin xfce4-clipman
  xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-datetime-plugin
  xfce4-diskperf-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-mailwatch-plugin
  xfce4-netload-plugin xfce4-notes xfce4-notes-plugin xfce4-places-plugin xfce4-screenshooter
  xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-taskmanager
  xfce4-timer-plugin xfce4-verve-plugin xfce4-wavelan-plugin xfce4-weather-plugin
  xfce4-whiskermenu-plugin xfce4-xkb-plugin
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  xfce4-goodies xfce4-terminal
0 upgraded, 0 newly installed, 2 to remove and 69 not upgraded.
After this operation, 2,303 kB disk space will be freed.
Do you want to continue? [Y/n] n
Abort.
phunc20@cingular-x61s:~$


```




