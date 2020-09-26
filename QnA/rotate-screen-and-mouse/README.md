```bash
$ xrandr --verbose
Screen 0: minimum 8 x 8, current 1366 x 768, maximum 32767 x 3
LVDS1 connected primary 1366x768+0+0 (0x4c) normal (normal lef
        Identifier: 0x42
        Timestamp:  177085998
        Subpixel:   horizontal rgb
        Gamma:      1.0:1.0:1.0
        Brightness: 1.0
        Clones:
        CRTC:       0
        CRTCs:      0 1
        Transform:  1.000000 0.000000 0.000000
                    0.000000 1.000000 0.000000
                    0.000000 0.000000 1.000000
                   filter:
                   ...


$ xinput
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

# By name
$ xinput list-props "TPPS/2 IBM TrackPoint"
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

$ xinput set-prop "TPPS/2 IBM T
0 -1 0 1 0 0 1ordinate Transformation Matrix" 0 1 0 -1 0 1 0 0

# By id
$ xinput
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
$ xinput list-props 6
Device 'Power Button':
        Device Enabled (166):   1
        Coordinate Transformation Matrix (168): 1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
        libinput Send Events Modes Available (286):     1, 0
        libinput Send Events Mode Enabled (287):        0, 0
        libinput Send Events Mode Enabled Default (288):        0, 0
        Device Node (289):      "/dev/input/event2"
        Device Product ID (290):        0, 1


```
