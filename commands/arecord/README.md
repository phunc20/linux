- `arecord -l` can list detected audio input devices. For example,
  ```bash
  $ arecord -l
  **** List of CAPTURE Hardware Devices ****
  card 0: Intel [HDA Intel], device 0: AD1984 Analog [AD1984 Analog]
    Subdevices: 1/1
    Subdevice #0: subdevice #0
  card 1: U0x46d0x81b [USB Device 0x46d:0x81b], device 0: USB Audio [USB Audio]
    Subdevices: 1/1
    Subdevice #0: subdevice #0
  ```
  where
    - `card 0` is the sound card on my Laptop
        - To specify this card, type `--device=hw:0,0`, where
          the first `0` specifies the **card number**,
          the second `0` the **device number**
    - `card 1` is the sound card on my logitech USB camera
        - To specify this card, type `--device=plughw:1,0`, e.g.
          ```
          $ arecord --duration=5 --format=dat --device=plughw:1,0 test-mic.wav
          ```
          can be used to test recording a 5-second audio file using the sound
          card on the USB camera saved to the file named `test-mic.wav`.
