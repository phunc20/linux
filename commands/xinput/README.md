## How to change trackpoint/trackpad/mouse direction?
This may be useful when you <b>rotate</b> your <b>screen</b>. More precisely, if you're using a laptop, instead of a desktop
computer, usually you **cannot rotate your physical monitor without also doing so to your keyboard**. (Note that we separate
the terms **screen** and **monitor** here to mean two conceptually diff things.) If you ever rotate your screen this way, say,
by using sth like `xrandr --output eDP1 --rotate left`, you may quickly find that moving the cursor isn't entirely intuitive --
You probably have to rotate your head around to accomodate the correct movement.

When we use `xinput` to inspect the properties of trackpoint, touchpad, or touchscreen, there is this `Coordinate Transformation Matrix`, which allows us to adjust the movement as we want. Below is an example (from my `~/.config/sxhkd/sxhkdrc` file)
```
super + Right
    xrandr --output `xrandr | grep "connected primary" | cut -d' ' -f1` --rotate right && ctm="0 1 0 -1 0 1 0 0 1" && xinput set-prop "TPPS/2 Elan TrackPoint" "Coordinate Transformation Matrix" $ctm && xinput set-prop "pointer:Raydium Corporation Raydium Touch System Touchscreen" "Coordinate Transformation Matrix" $ctm
```


## How to inspect existing X input devices
- <code>xinput list</code>
- <code>xinput list-props \<device\></code>
  - `xinput list <device>` gives a diff result

For example, on my <code>artichaut-x220</code>
```bash
~ ❯❯❯ xinput list
⎡ Virtual core pointer                          id=2    [master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
⎜   ↳ TPPS/2 IBM TrackPoint                     id=12   [slave  pointer  (2)]
⎜   ↳ SynPS/2 Synaptics TouchPad                id=11   [slave  pointer  (2)]
⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
    ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
    ↳ ThinkPad Extra Buttons                    id=13   [slave  keyboard (3)]
    ↳ Integrated Camera: Integrated C           id=9    [slave  keyboard (3)]
    ↳ Sleep Button                              id=8    [slave  keyboard (3)]
    ↳ Power Button                              id=6    [slave  keyboard (3)]
    ↳ AT Translated Set 2 keyboard              id=10   [slave  keyboard (3)]
    ↳ Video Bus                                 id=7    [slave  keyboard (3)]

~ ❯❯❯ xinput list-props "TPPS/2 IBM TrackPoint"
Device 'TPPS/2 IBM TrackPoint':
        Device Enabled (166):   1
        Coordinate Transformation Matrix (168): 1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
        libinput Natural Scrolling Enabled (309):       0
        libinput Natural Scrolling Enabled Default (310):       0
        libinput Scroll Methods Available (313):        0, 0, 1
        libinput Scroll Method Enabled (314):   0, 0, 1
        libinput Scroll Method Enabled Default (315):   0, 0, 1
        libinput Button Scrolling Button (327): 2
        libinput Button Scrolling Button Default (328): 2
        libinput Middle Emulation Enabled (319):        0
        libinput Middle Emulation Enabled Default (320):        0
        libinput Accel Speed (321):     0.000000
        libinput Accel Speed Default (322):     0.000000
        libinput Accel Profiles Available (329):        1, 1
        libinput Accel Profile Enabled (330):   1, 0
        libinput Accel Profile Enabled Default (331):   1, 0
        libinput Left Handed Enabled (323):     0
        libinput Left Handed Enabled Default (324):     0
        libinput Send Events Modes Available (286):     1, 0
        libinput Send Events Mode Enabled (287):        0, 0
        libinput Send Events Mode Enabled Default (288):        0, 0
        Device Node (289):      "/dev/input/event15"
        Device Product ID (290):        2, 10
        libinput Drag Lock Buttons (325):       <no items>
        libinput Horizontal Scroll Enabled (326):       1
~ ❯❯❯ xinput list "TPPS/2 IBM TrackPoint"
TPPS/2 IBM TrackPoint                           id=10   [slave  pointer  (2)]
        Reporting 7 classes:
                Class originated from: 10. Type: XIButtonClass
                Buttons supported: 7
                Button labels: "Button Left" "Button Middle" "Button Right" "Button Wheel Up" "Button Wheel Down" "
Button Horiz Wheel Left" "Button Horiz Wheel Right"
                Button state:
                Class originated from: 10. Type: XIValuatorClass
                Detail for Valuator 0:
                  Label: Rel X
                  Range: -1.000000 - -1.000000
                  Resolution: 0 units/m
                  Mode: relative
                Class originated from: 10. Type: XIValuatorClass
                Detail for Valuator 1:
                  Label: Rel Y
                  Range: -1.000000 - -1.000000
                  Resolution: 0 units/m
                  Mode: relative
                Class originated from: 10. Type: XIValuatorClass
                Detail for Valuator 2:
                  Label: Rel Horiz Scroll
                  Range: -1.000000 - -1.000000
                  Resolution: 0 units/m
                  Mode: relative
                Class originated from: 10. Type: XIValuatorClass
                Detail for Valuator 3:
                  Label: Rel Vert Scroll
                  Range: -1.000000 - -1.000000
                  Resolution: 0 units/m
                  Mode: relative
                Class originated from: 10. Type: XIScrollClass
                Scroll info for Valuator 2
                  type: 2 (horizontal)
                  increment: 15.000000
                  flags: 0x0
                Class originated from: 10. Type: XIScrollClass
                Scroll info for Valuator 3
                  type: 1 (vertical)
                  increment: 15.000000
                  flags: 0x0
```


## Enable/Disable devices
01. Use the commmand <code>xinput</code> to find the name of the device you want to disable/enable
02. <code><b>xinput disable \<device\></b></code> or <code><b>xinput enable \<device\></b></code>
```bash
[phunc20@handshake-t400 Downloads]$ xinput
⎡ Virtual core pointer                          id=2    [master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
⎜   ↳ SynPS/2 Synaptics TouchPad                id=11   [slave  pointer  (2)]
⎜   ↳ TPPS/2 IBM TrackPoint                     id=12   [slave  pointer  (2)]
⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
    ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
    ↳ Power Button                              id=6    [slave  keyboard (3)]
    ↳ Video Bus                                 id=7    [slave  keyboard (3)]
    ↳ Sleep Button                              id=8    [slave  keyboard (3)]
    ↳ Integrated Camera: Integrated C           id=9    [slave  keyboard (3)]
    ↳ AT Translated Set 2 keyboard              id=10   [slave  keyboard (3)]
    ↳ ThinkPad Extra Buttons                    id=13   [slave  keyboard (3)]
[phunc20@handshake-t400 Downloads]$ xinput disable "SynPS/2 Synaptics TouchPad"
[phunc20@handshake-t400 Downloads]$ xinput enable "SynPS/2 Synaptics TouchPad"
```




