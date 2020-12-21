## `usbmuxd`
- Before
  ```bash
  ~ ❯❯❯ systemctl status usbmuxd.service
  ● usbmuxd.service - Socket daemon for the usbmux protocol used by Apple devices
       Loaded: loaded (/usr/lib/systemd/system/usbmuxd.service; static)
       Active: inactive (dead)
         Docs: man:usbmuxd(8)
  
  Dec 20 23:20:54 handshake-t400 systemd[1]: /usr/lib/systemd/system/usbmuxd.service:7: PIDFile= references a path below legacy directory /var/run/, updating /var/run/usbmuxd.>
  ```
- After
  ```bash
  ~ ❯❯❯ systemctl status usbmuxd.service
  ● usbmuxd.service - Socket daemon for the usbmux protocol used by Apple devices
       Loaded: loaded (/usr/lib/systemd/system/usbmuxd.service; static)
       Active: active (running) since Sun 2020-12-20 23:21:56 +07; 25s ago
         Docs: man:usbmuxd(8)
     Main PID: 3299 (usbmuxd)
        Tasks: 2 (limit: 9409)
       Memory: 1.2M
       CGroup: /system.slice/usbmuxd.service
               └─3299 /usr/bin/usbmuxd --user usbmux --systemd
  
  Dec 20 23:21:56 handshake-t400 usbmuxd[3299]: [23:21:56.575][3] usbmuxd v1.1.1 starting up
  Dec 20 23:21:56 handshake-t400 usbmuxd[3299]: [23:21:56.576][3] Successfully dropped privileges to 'usbmux'
  Dec 20 23:21:56 handshake-t400 usbmuxd[3299]: [23:21:56.576][3] Using libusb 1.0.23
  Dec 20 23:21:57 handshake-t400 usbmuxd[3299]: libusb: error [udev_hotplug_event] ignoring udev action bind
  Dec 20 23:21:57 handshake-t400 usbmuxd[3299]: libusb: error [op_get_configuration] device unconfigured
  Dec 20 23:21:57 handshake-t400 usbmuxd[3299]: [23:21:57.009][3] Could not get old configuration descriptor for device 6-2: LIBUSB_ERROR_NOT_FOUND
  Dec 20 23:21:57 handshake-t400 usbmuxd[3299]: [23:21:57.024][3] Initialization complete
  Dec 20 23:21:57 handshake-t400 usbmuxd[3299]: [23:21:57.024][3] Enabled exit on SIGUSR1 if no devices are attached. Start a new instance with "--exit" to trigger.
  Dec 20 23:21:57 handshake-t400 usbmuxd[3299]: [23:21:57.030][3] Connecting to new device on location 0x70003 as ID 1
  Dec 20 23:21:57 handshake-t400 usbmuxd[3299]: [23:21:57.031][3] Connected to v2.0 device 1 on location 0x60002 with serial number 78d379621ff4e734d2a7efba22d4830870005082
  ~ ❯❯❯
  ```

## Pairing
Use your iPhone's USB cable to connect it to your arch linux's machine. **N.B.** The iPhone screen must be unblocked to be able to run the command `idevicepair pair`.
- before unlocking the screen
  ```bash
  ~ ❯❯❯ idevicepair pair
  ERROR: Could not validate with device 789949123bf4e724d2d7e3ba25d9f30870745082 because a passcode is set. Please enter the passcode on the device and retry.
  ```
- After unlocking the screen
  ```bash
  ~ ❯❯❯ idevicepair pair
  SUCCESS: Paired with device 789949123bf4e724d2d7e3ba25d9f30870745082 
  ```


## VLC

```bash
~ ❯❯❯ ifuse --list-apps
"CFBundleIdentifier","CFBundleVersion","CFBundleDisplayName"
"com.brave.ios.browser","20.12.02.00","Brave"
"org.videolan.vlc-ios","375","VLC"
~ ❯❯❯ mkdir -p /mnt/
AirFair/        CloudAssets/    Downloads/      MediaAnalysis/  Photos/         Purchases/      Recordings/
Books/          DCIM/           iTunes_Control/ PhotoData/      PublicStaging/  Radio/
~ ❯❯❯ mkdir -p corbeille/vlc
~ ❯❯❯ ifuse --documents org.videolan.vlc-ios corbeille/vlc
```

