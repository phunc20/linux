# `iwd`
- `sudo pacman -S iwd`. This package contains `iwctl`, `iwd`, `iwmon`.
- Enable or start `iwd.service`.


## IP and Name Resolution
These are indispensible when one wants to have a working Internet connection.

1. Since `iwd` version 0.19, one **no longer** need `dhcpcd` (or `wpa_supplicant`)
   in order to be dynamically assigned an IP address from their gateway.  
   Instead, put the following line(s) in `/etc/iwd/main.conf`:
   ```
   [General]
   EnableNetworkConfiguration=true
   ```
1. Being assigned an IP address is **not enough**, one still need an **DNS manager**
   to resolve domain names. Here we only introduce one way (`systemd-resolved`)
   - Enable or start `systemd-resolved.service`
   - (Optional because `systemd-resolved` is the default) Put the following lines
     in `/etc/iwd/main.conf`
     ```
     [Network]
     NameResolvingService=systemd
     ```
For more info, cf. <https://wiki.archlinux.org/index.php/Iwd>


## `iwctl`
`iwctl` is a command-line tool you'd have once you installed `iwd`.

- By default, `iwd` stores the network configuration in `/var/lib/iwd` directory.
  In particular, the passwords of your logged-in SSIDs are also stored
  in this directory.
- Another configuration file is located at `/etc/iwd/main.conf`
- The autocomplete function of `iwctl` is good, so make sure to make much use of it (by clicking the `Tab` key).
- All commands in `iwctl` interactive prompt can be done in shell without going into interactive mode, e.g. `$ iwctl device wlp3s0 show` or `iwctl station wlan0 connect <SSID>`
- `[iwd]# device list` to list all available wifi devices
- `[iwd]# station wlan0 scan` to scan wifi access points (ACs)
- `[iwd]# station wlan0 get-networks` to list all available ACs
- `[iwd]# station wlan0 connect "MeoMeo 5G"` to connect to some AC by its SSID
- `[iwd]# station wlan0 show` to show the connection to the currently connect AC
- `[iwd]# device wlan0 show` to show the currently used wifi device

```bash
root@archiso ~ # iwctl
[iwd]# help

                              iwctl version 1.10
--------------------------------------------------------------------------------
  Usage
--------------------------------------------------------------------------------
  iwctl [--options] [commands]
                              Available options
--------------------------------------------------------------------------------
  Options                                           Description
--------------------------------------------------------------------------------
  --username                                        Provide username
  --password                                        Provide password
  --passphrase                                      Provide passphrase
  --dont-ask                                        Don't ask for missing
  credentials
  --help                                            Display help
  
                              Available commands
--------------------------------------------------------------------------------
  Commands                                          Description
--------------------------------------------------------------------------------

Adapters:
  adapter list                                      List adapters
  adapter <phy> show                                Show adapter info
  adapter <phy> set-property <name> <value>         Set property
  
Ad-Hoc:
  ad-hoc list                                       List devices in Ad-hoc mode
  ad-hoc <wlan> start <"network name"> <passphrase> Start or join an existing
  Ad-Hoc network called
  "network name" with a
  passphrase
  ad-hoc <wlan> start_open <"network name">         Start or join an existing
  open Ad-Hoc network called
  "network name"
  ad-hoc <wlan> stop                                Leave an Ad-Hoc network
  
Access Point:
  ap list                                           List devices in AP mode
  ap <wlan> start <"network name"> <passphrase>     Start an access point
  called "network name" with
  a passphrase
  ap <wlan> stop                                    Stop a started access
  point
  
Devices:
  device list                                       List devices
  device <wlan> show                                Show device info
  device <wlan> set-property <name> <value>         Set property
  
Known Networks:
  known-networks list                               List known networks
  known-networks <"network name"> forget            Forget known network
  known-networks <"network name"> show              Show known network
  known-networks <"network name"> set-property <name> <value>Set property
  
WiFi Simple Configuration:
  wsc list                                          List WSC-capable devices
  wsc <wlan> push-button                            PushButton mode
  wsc <wlan> start-user-pin <8 digit PIN>           PIN mode
  wsc <wlan> start-pin                              PIN mode with generated
  8 digit PIN
  wsc <wlan> cancel                                 Aborts WSC operations
  
Station:
  station list                                      List devices in Station mode
  station <wlan> connect <"network name"> [security]Connect to network
  station <wlan> connect-hidden <"network name">    Connect to hidden network
  station <wlan> disconnect                         Disconnect
  station <wlan> get-networks [rssi-dbms/rssi-bars] Get networks
  station <wlan> get-hidden-access-points [rssi-dbms]Get hidden APs
  station <wlan> scan                               Scan for networks
  station <wlan> show                               Show station info
  
  
Miscellaneous:
  version                                           Display version
  quit                                              Quit program
[iwd]# device list
                                 Devices
--------------------------------------------------------------------------------
  Name                Address             Powered   Adapter   Mode
--------------------------------------------------------------------------------
  wlan0               07:7a:fa:01:66:f7   on        phy0      station

[iwd]# station wlan0 scan
[iwd]# station wlan0 get-networks
                                 Available networks
--------------------------------------------------------------------------------
    Network name                    Security  Signal
--------------------------------------------------------------------------------
    Sweet Home                      psk       ****
    MeoMeo 5G                       psk       ****
    AN                              psk       ****
    D403                            psk       ****

[iwd]# station wlan0 connect "MeoMeo 5G"
Type the network passphrase for MeoMeo 5G psk.
Passphrase: ********
[iwd]# device wlan0 show
Device: wlan0                                *
--------------------------------------------------------------------------------
    Settable  Property            Value
--------------------------------------------------------------------------------
    Name                wlan0
    Mode                station
    Powered             on
    Address             07:7a:fa:01:66:f7
    Adapter             phy0

[iwd]# station wlan0 show
Station: wlan0
--------------------------------------------------------------------------------
    Settable  Property            Value
--------------------------------------------------------------------------------
    Scanning            no
    State               connected
    Connected network   MeoMeo 5G

[iwd]#
```


