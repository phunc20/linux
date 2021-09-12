## Mouse Sensitivity
This is sometimes called sth like **"Acceleration"**. Namely, when you plug in your mouse to your computer,
sometimes you will find that the mouse cursor is moving faster than you desire, and you want to make it slower.

Some says that you should inspect by the command of `xinput` like follows, and eventually set its properties via
`xinput set-prop`.

```bash
~ ❯❯❯ xinput                                                                                                                                                             [7/7]
⎡ Virtual core pointer                          id=2    [master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
⎜   ↳ Majestouch Convertible 2 Consumer Control id=10   [slave  pointer  (2)]
⎜   ↳ Corsair CORSAIR M55 RGB PRO Gaming Mouse  id=13   [slave  pointer  (2)]
⎜   ↳ TPPS/2 IBM TrackPoint                     id=17   [slave  pointer  (2)]
⎜   ↳ SynPS/2 Synaptics TouchPad                id=16   [slave  pointer  (2)]
⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
    ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
    ↳ Power Button                              id=6    [slave  keyboard (3)]
    ↳ Video Bus                                 id=7    [slave  keyboard (3)]
    ↳ Sleep Button                              id=8    [slave  keyboard (3)]
    ↳ Majestouch Convertible 2                  id=9    [slave  keyboard (3)]
    ↳ Majestouch Convertible 2 System Control   id=11   [slave  keyboard (3)]
    ↳ Integrated Camera: Integrated C           id=12   [slave  keyboard (3)]
    ↳ Corsair CORSAIR M55 RGB PRO Gaming Mouse  id=14   [slave  keyboard (3)]
    ↳ AT Translated Set 2 keyboard              id=15   [slave  keyboard (3)]
    ↳ ThinkPad Extra Buttons                    id=18   [slave  keyboard (3)]
    ↳ Majestouch Convertible 2 Consumer Control id=19   [slave  keyboard (3)]
~ ❯❯❯ xinput list-props 14
Device 'Corsair CORSAIR M55 RGB PRO Gaming Mouse':
        Device Enabled (173):   1
        Coordinate Transformation Matrix (175): 1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
        libinput Send Events Modes Available (293):     1, 0
        libinput Send Events Mode Enabled (294):        0, 0
        libinput Send Events Mode Enabled Default (295):        0, 0
        Device Node (296):      "/dev/input/event19"
        Device Product ID (297):        6940, 7024
~ ❯❯❯
```

But, like in this particular case of Corsair's mouse, there is no such a thing as acceleration listed in its properties. It turned out that
there is a button on the mouse, which, when pushed, will display diff colors and switching to diff sensitivity/acceleration. Problem solved :)


