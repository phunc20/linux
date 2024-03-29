
```bash
~ ❯❯❯ bluetoothctl
Agent registered
[CHG] Controller 00:26:5E:98:C4:9E Pairable: yes
[bluetooth]# power on
[CHG] Controller 00:26:5E:98:C4:9E Class: 0x000c010c
Changing power on succeeded
[CHG] Controller 00:26:5E:98:C4:9E Powered: yes
[bluetooth]# scan
Missing on/off argument
[bluetooth]# scan on
Discovery started
[CHG] Controller 00:26:5E:98:C4:9E Discovering: yes
[bluetooth]# devices
[bluetooth]# agent on
Agent is already registered
[bluetooth]# devices
[bluetooth]# help
Menu main:
Available commands:
-------------------
advertise                                         Advertise Options Submenu
scan                                              Scan Options Submenu
gatt                                              Generic Attribute Submenu
list                                              List available controllers
show [ctrl]                                       Controller information
select <ctrl>                                     Select default controller
devices                                           List available devices
paired-devices                                    List paired devices
system-alias <name>                               Set controller alias
reset-alias                                       Reset controller alias
power <on/off>                                    Set controller power
pairable <on/off>                                 Set controller pairable mode
discoverable <on/off>                             Set controller discoverable mode
discoverable-timeout [value]                      Set discoverable timeout
agent <on/off/capability>                         Enable/disable agent with given capability
default-agent                                     Set agent as the default one
advertise <on/off/type>                           Enable/disable advertising with given type
set-alias <alias>                                 Set device alias
scan <on/off>                                     Scan for devices
info [dev]                                        Device information
pair [dev]                                        Pair with device
cancel-pairing [dev]                              Cancel pairing with device
trust [dev]                                       Trust device
untrust [dev]                                     Untrust device
block [dev]                                       Block device
unblock [dev]                                     Unblock device
remove <dev>                                      Remove device
connect <dev>                                     Connect device
disconnect [dev]                                  Disconnect device
menu <name>                                       Select submenu
version                                           Display version
quit                                              Quit program
exit                                              Quit program
help                                              Display help about this program
export                                            Print environment variables
[bluetooth]# paired-devices
[bluetooth]# devices
[NEW] Device 00:42:79:E9:2D:FD JBL Flip 4
[bluetooth]# connect 00:42:79:E9:2D:FD
Attempting to connect to 00:42:79:E9:2D:FD
[CHG] Device 00:42:79:E9:2D:FD Connected: yes
[CHG] Device 00:42:79:E9:2D:FD UUIDs: 00001108-0000-1000-8000-00805f9b34fb
[CHG] Device 00:42:79:E9:2D:FD UUIDs: 0000110b-0000-1000-8000-00805f9b34fb
[CHG] Device 00:42:79:E9:2D:FD UUIDs: 0000110c-0000-1000-8000-00805f9b34fb
[CHG] Device 00:42:79:E9:2D:FD UUIDs: 0000110e-0000-1000-8000-00805f9b34fb
[CHG] Device 00:42:79:E9:2D:FD UUIDs: 0000111e-0000-1000-8000-00805f9b34fb
[CHG] Device 00:42:79:E9:2D:FD UUIDs: 00001200-0000-1000-8000-00805f9b34fb
[CHG] Device 00:42:79:E9:2D:FD ServicesResolved: yes
[CHG] Device 00:42:79:E9:2D:FD Paired: yes
Connection successful
[JBL Flip 4]# disconnect
Attempting to disconnect from 00:42:79:E9:2D:FD
[CHG] Device 00:42:79:E9:2D:FD ServicesResolved: no
Successful disconnected
[CHG] Device 00:42:79:E9:2D:FD Connected: no
[CHG] Device 00:42:79:E9:2D:FD TxPower is nil
[CHG] Device 00:42:79:E9:2D:FD RSSI is nil
[DEL] Device 00:42:79:E9:2D:FD JBL Flip 4
[CHG] Controller 00:26:5E:98:C4:9E Class: 0x00000000
[CHG] Controller 00:26:5E:98:C4:9E Powered: no
[CHG] Controller 00:26:5E:98:C4:9E Discovering: no
[DEL] Controller 00:26:5E:98:C4:9E handshake-t400 [default]
[NEW] Controller 00:26:5E:98:C4:9E handshake-t400 [default]
[NEW] Device 00:42:79:E9:2D:FD JBL Flip 4
[CHG] Controller 00:26:5E:98:C4:9E UUIDs: 0000110a-0000-1000-8000-00805f9b34fb
[CHG] Controller 00:26:5E:98:C4:9E UUIDs: 00001200-0000-1000-8000-00805f9b34fb
[CHG] Controller 00:26:5E:98:C4:9E UUIDs: 0000110c-0000-1000-8000-00805f9b34fb
[CHG] Controller 00:26:5E:98:C4:9E UUIDs: 0000110e-0000-1000-8000-00805f9b34fb
[CHG] Controller 00:26:5E:98:C4:9E UUIDs: 0000110b-0000-1000-8000-00805f9b34fb
quitetooth]#
~ ❯❯❯
```


## ThinkPad X61s to Sony WH-1000XM4
To succeed, I mostly followed <https://wiki.archlinux.org/title/bluetooth_headset#Headset_via_Bluez5/PulseAudio>
with only one exception:
When connection failed with the message
`Failed to connect: org.bluez.Error.Failed br-connection-profile-unavailable`
from inside `bluetoothctl`,
I checked with `systemctl status bluetooth.service`, which said,
`bluetooth protocol not available`. Then I googled and found a solution
```shell
pactl unload-module module-bluetooth-discover
pactl load-module module-bluetooth-discover
```
which did help solve the problem.
Cf. <https://askubuntu.com/questions/1115671/blueman-protocol-not-available>

Note that in the arch wiki, it mentioned trying with `$ pulseaudio -k`, i.e.
killing existing PulseAudio daemon. This might be equiv. to the solution above.

**Rmk.** When pairing btw the laptop and the headphone, one might be asked to
type in the PIN code as follows.
```shell
Request PIN code
[agent] Enter PIN code: 0000
```
As shown above, usually trying with the code `0000` will succeed.


## ThinkPad T460p to Soundcore A20i
- Connected but no sound?
    - Follow these commands:
      ```bash
      $ mv ~/.config/pulse/ ~/.config/pulse.old
      $ pulseaudio --k && pulseaudio --start
      ```
    - Cannot adjust volume? Use `pavucontrol`
