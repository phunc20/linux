## How to use <code>connmanctl</code> to connect to wifi?
- <code>scan wifi</code>
- <code>services</code>: To locate the SSID of the wifi you want to connect to
- <code>agent on</code>
- <code>connect \<SSID\></code>

For example,
```bash
[phunc20@headache-x220tablet ~]$ connmanctl
connmanctl> scan wifi
Scan completed for wifi
connmanctl> services
    MYLIFE ALEXANDRE     wifi_8c705a8baacc_4d594c49464520414c4558414e445245_managed_psk
                         wifi_8c705a8baacc_hidden_managed_psk
    Note FE              wifi_8c705a8baacc_4e6f7465204645_managed_psk
    HUAWEI nova 3e       wifi_8c705a8baacc_485541574549206e6f7661203365_managed_psk
    BSSC_Lau2            wifi_8c705a8baacc_425353435f4c617532_managed_psk
    TichLuy.vn 2G        wifi_8c705a8baacc_546963684c75792e766e203247_managed_psk
    Xung kich Sang tao   wifi_8c705a8baacc_58756e67206b6963682053616e672074616f_managed_psk
    Tuoi tre TPHCM       wifi_8c705a8baacc_54756f692074726520545048434d_managed_psk
    VNFT -VNPT           wifi_8c705a8baacc_564e4654202d564e5054_managed_psk
    Medplus.vn           wifi_8c705a8baacc_4d6564706c75732e766e_managed_psk
    BSSC                 wifi_8c705a8baacc_42535343_managed_psk
    CVHVT                wifi_8c705a8baacc_4356485654_managed_psk
    Tich Luy             wifi_8c705a8baacc_54696368204c7579_managed_psk
    VNFT 2               wifi_8c705a8baacc_564e46542032_managed_psk
    ATEC                 wifi_8c705a8baacc_41544543_managed_psk
    Telstra4GA-A0C8      wifi_8c705a8baacc_54656c737472613447412d41304338_managed_psk
    Manulife_VietNam_01  wifi_8c705a8baacc_4d616e756c6966655f566965744e616d5f3031_managed_psk
connmanctl> connect wifi_8c705a8baacc_4d594c49464520414c4558414e445245_managed_psk
Error /net/connman/service/wifi_8c705a8baacc_4d594c49464520414c4558414e445245_managed_psk: Not registered
connmanctl> agent on
Agent registered
connmanctl> connect wifi_8c705a8baacc_4d594c49464520414c4558414e445245_managed_psk
Agent RequestInput wifi_8c705a8baacc_4d594c49464520414c4558414e445245_managed_psk
  Passphrase = [ Type=psk, Requirement=mandatory ]
Passphrase? 12345678
Connected wifi_8c705a8baacc_4d594c49464520414c4558414e445245_managed_psk
connmanctl>
[phunc20@headache-x220tablet ~]$ ping google.com
PING google.com (172.217.24.78) 56(84) bytes of data.
64 bytes from sin10s06-in-f78.1e100.net (172.217.24.78): icmp_seq=1 ttl=117 time=26.4 ms
64 bytes from sin10s06-in-f78.1e100.net (172.217.24.78): icmp_seq=2 ttl=117 time=28.9 ms
64 bytes from sin10s06-in-f78.1e100.net (172.217.24.78): icmp_seq=3 ttl=117 time=29.3 ms
^C
--- google.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2002ms
rtt min/avg/max/mdev = 26.445/28.214/29.330/1.265 ms
```
