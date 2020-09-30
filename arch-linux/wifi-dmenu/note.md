```bash
cat w | sed 's/  \+/,/g'
cat w | cut -c 2-

$ cat w | sed 's/\([0-9A-F]\{2\}:\)\{5\}[0-9A-F][0-9A-F]  //g'
IN-USE  BSSID              SSID                    MODE   CHAN  RATE        SIGNAL  BARS  SECURITY
        NHÀ KẾ BÊN              Infra  11    130 Mbit/s  100     ▂▄▆█  WPA1 WPA2
*       PIZZA INN 106 DTH       Infra  1     130 Mbit/s  89      ▂▄▆█  WPA1 WPA2
        Lien94                  Infra  6     130 Mbit/s  57      ▂▄▆_  WPA2
        6 Á Châu Apple          Infra  11    130 Mbit/s  45      ▂▄__  WPA2
        DIRECT-D3AD5759         Infra  1     65 Mbit/s   42      ▂▄__  WPA2
        3 A Chau Mobile 2.4Ghz  Infra  10    130 Mbit/s  42      ▂▄__  WPA1 WPA2
        Nguoi La Oi             Infra  10    130 Mbit/s  42      ▂▄__  WPA1 WPA2
        Nhi Son                 Infra  7     130 Mbit/s  39      ▂▄__  WPA1 WPA2
        WELCOME                 Infra  1     130 Mbit/s  37      ▂▄__  WPA1 WPA2
        4 Á Châu Mobile 2.4Ghz  Infra  6     130 Mbit/s  34      ▂▄__  WPA2
        Ga Nuong O O O 2.4GHz   Infra  11    130 Mbit/s  34      ▂▄__  WPA2
        CAU VONG 3G             Infra  11    130 Mbit/s  32      ▂▄__  WPA2
        LanKhanh                Infra  11    130 Mbit/s  32      ▂▄__  WPA2
        Maxstudio               Infra  3     130 Mbit/s  29      ▂___  WPA1 WPA2
        Ga Nuong O O O 5Ghz     Infra  36    135 Mbit/s  27      ▂___  WPA2
        Minh Tam                Infra  6     130 Mbit/s  25      ▂___  WPA1 WPA2
        KYMDAN                  Infra  11    130 Mbit/s  22      ▂___  WPA2
        2 A Chau Mobile 5GHz    Infra  100   270 Mbit/s  22      ▂___  WPA1 WPA2
        Truong Quan 5Ghz        Infra  149   270 Mbit/s  22      ▂___  WPA1 WPA2
        thanhtuyen4             Infra  11    130 Mbit/s  20      ▂___  WPA2
        CAU VONG                Infra  4     270 Mbit/s  19      ▂___  WPA1 WPA2
$
$ head -1 w | sed 's/BSSID\ *//g'
IN-USE  SSID                    MODE   CHAN  RATE        SIGNAL  BARS  SECURITY
$ head -1 w
IN-USE  BSSID              SSID                    MODE   CHAN  RATE        SIGNAL  BARS  SECURITY
$ cat w | sed 's/\([0-9A-F]\{2\}:\)\{5\}[0-9A-F][0-9A-F]  //g;s/BSSID\ *//g;s/\*\ */\* /g'
IN-USE  SSID                    MODE   CHAN  RATE        SIGNAL  BARS  SECURITY
        NHÀ KẾ BÊN              Infra  11    130 Mbit/s  100     ▂▄▆█  WPA1 WPA2
* PIZZA INN 106 DTH       Infra  1     130 Mbit/s  89      ▂▄▆█  WPA1 WPA2
        Lien94                  Infra  6     130 Mbit/s  57      ▂▄▆_  WPA2
        6 Á Châu Apple          Infra  11    130 Mbit/s  45      ▂▄__  WPA2
        DIRECT-D3AD5759         Infra  1     65 Mbit/s   42      ▂▄__  WPA2
        3 A Chau Mobile 2.4Ghz  Infra  10    130 Mbit/s  42      ▂▄__  WPA1 WPA2
        Nguoi La Oi             Infra  10    130 Mbit/s  42      ▂▄__  WPA1 WPA2
        Nhi Son                 Infra  7     130 Mbit/s  39      ▂▄__  WPA1 WPA2
        WELCOME                 Infra  1     130 Mbit/s  37      ▂▄__  WPA1 WPA2
        4 Á Châu Mobile 2.4Ghz  Infra  6     130 Mbit/s  34      ▂▄__  WPA2
        Ga Nuong O O O 2.4GHz   Infra  11    130 Mbit/s  34      ▂▄__  WPA2
        CAU VONG 3G             Infra  11    130 Mbit/s  32      ▂▄__  WPA2
        LanKhanh                Infra  11    130 Mbit/s  32      ▂▄__  WPA2
        Maxstudio               Infra  3     130 Mbit/s  29      ▂___  WPA1 WPA2
        Ga Nuong O O O 5Ghz     Infra  36    135 Mbit/s  27      ▂___  WPA2
        Minh Tam                Infra  6     130 Mbit/s  25      ▂___  WPA1 WPA2
        KYMDAN                  Infra  11    130 Mbit/s  22      ▂___  WPA2
        2 A Chau Mobile 5GHz    Infra  100   270 Mbit/s  22      ▂___  WPA1 WPA2
        Truong Quan 5Ghz        Infra  149   270 Mbit/s  22      ▂___  WPA1 WPA2
        thanhtuyen4             Infra  11    130 Mbit/s  20      ▂___  WPA2
        CAU VONG                Infra  4     270 Mbit/s  19      ▂___  WPA1 WPA2

$ cat w | sed 's/\([0-9A-F]\{2\}:\)\{5\}[0-9A-F][0-9A-F]  //g;s/BSSID\ *//g;s/\*\ */\* /g;s/Infra  [0-9]\{1,3\}\ *//g'
IN-USE  SSID                    MODE   CHAN  RATE        SIGNAL  BARS  SECURITY
        NHÀ KẾ BÊN              130 Mbit/s  100     ▂▄▆█  WPA1 WPA2
* PIZZA INN 106 DTH       130 Mbit/s  89      ▂▄▆█  WPA1 WPA2
        Lien94                  130 Mbit/s  57      ▂▄▆_  WPA2
        6 Á Châu Apple          130 Mbit/s  45      ▂▄__  WPA2
        DIRECT-D3AD5759         65 Mbit/s   42      ▂▄__  WPA2
        3 A Chau Mobile 2.4Ghz  130 Mbit/s  42      ▂▄__  WPA1 WPA2
        Nguoi La Oi             130 Mbit/s  42      ▂▄__  WPA1 WPA2
        Nhi Son                 130 Mbit/s  39      ▂▄__  WPA1 WPA2
        WELCOME                 130 Mbit/s  37      ▂▄__  WPA1 WPA2
        4 Á Châu Mobile 2.4Ghz  130 Mbit/s  34      ▂▄__  WPA2
        Ga Nuong O O O 2.4GHz   130 Mbit/s  34      ▂▄__  WPA2
        CAU VONG 3G             130 Mbit/s  32      ▂▄__  WPA2
        LanKhanh                130 Mbit/s  32      ▂▄__  WPA2
        Maxstudio               130 Mbit/s  29      ▂___  WPA1 WPA2
        Ga Nuong O O O 5Ghz     135 Mbit/s  27      ▂___  WPA2
        Minh Tam                130 Mbit/s  25      ▂___  WPA1 WPA2
        KYMDAN                  130 Mbit/s  22      ▂___  WPA2
        2 A Chau Mobile 5GHz    270 Mbit/s  22      ▂___  WPA1 WPA2
        Truong Quan 5Ghz        270 Mbit/s  22      ▂___  WPA1 WPA2
        thanhtuyen4             130 Mbit/s  20      ▂___  WPA2
        CAU VONG                270 Mbit/s  19      ▂___  WPA1 WPA2

$ head -1 w | sed 's/\(IN-USE\|BSSID\|MODE\|CHAN\)\ \+//g;'
SSID                    RATE        SIGNAL  BARS  SECURITY

$ cat w | sed 's/\([0-9A-F]\{2\}:\)\{5\}[0-9A-F]\{2\}  //g;s/Infra  [0-9]\{1,3\}\ *//g;s/\(BSSID\|MODE\|CHAN\)\ \+//g'
IN-USE  SSID                    RATE        SIGNAL  BARS  SECURITY
        NHÀ KẾ BÊN              130 Mbit/s  100     ▂▄▆█  WPA1 WPA2
*       PIZZA INN 106 DTH       130 Mbit/s  89      ▂▄▆█  WPA1 WPA2
        Lien94                  130 Mbit/s  57      ▂▄▆_  WPA2
        6 Á Châu Apple          130 Mbit/s  45      ▂▄__  WPA2
        DIRECT-D3AD5759         65 Mbit/s   42      ▂▄__  WPA2
        3 A Chau Mobile 2.4Ghz  130 Mbit/s  42      ▂▄__  WPA1 WPA2
        Nguoi La Oi             130 Mbit/s  42      ▂▄__  WPA1 WPA2
        Nhi Son                 130 Mbit/s  39      ▂▄__  WPA1 WPA2
        WELCOME                 130 Mbit/s  37      ▂▄__  WPA1 WPA2
        4 Á Châu Mobile 2.4Ghz  130 Mbit/s  34      ▂▄__  WPA2
        Ga Nuong O O O 2.4GHz   130 Mbit/s  34      ▂▄__  WPA2
        CAU VONG 3G             130 Mbit/s  32      ▂▄__  WPA2
        LanKhanh                130 Mbit/s  32      ▂▄__  WPA2
        Maxstudio               130 Mbit/s  29      ▂___  WPA1 WPA2
        Ga Nuong O O O 5Ghz     135 Mbit/s  27      ▂___  WPA2
        Minh Tam                130 Mbit/s  25      ▂___  WPA1 WPA2
        KYMDAN                  130 Mbit/s  22      ▂___  WPA2
        2 A Chau Mobile 5GHz    270 Mbit/s  22      ▂___  WPA1 WPA2
        Truong Quan 5Ghz        270 Mbit/s  22      ▂___  WPA1 WPA2
        thanhtuyen4             130 Mbit/s  20      ▂___  WPA2
        CAU VONG                270 Mbit/s  19      ▂___  WPA1 WPA2

$ cat w | sed 's/\([0-9A-F]\{2\}:\)\{5\}[0-9A-F]\{2\}  //g;s/Infra  [0-9]\{1,3\}\ *//g;s/\(IN-USE\|BSSID\|MODE\|CHAN\)\ \+//g;s/^\*\ */* /g;s/^\ \+/  /g'
SSID                    RATE        SIGNAL  BARS  SECURITY
  NHÀ KẾ BÊN              130 Mbit/s  100     ▂▄▆█  WPA1 WPA2
* PIZZA INN 106 DTH       130 Mbit/s  89      ▂▄▆█  WPA1 WPA2
  Lien94                  130 Mbit/s  57      ▂▄▆_  WPA2
  6 Á Châu Apple          130 Mbit/s  45      ▂▄__  WPA2
  DIRECT-D3AD5759         65 Mbit/s   42      ▂▄__  WPA2
  3 A Chau Mobile 2.4Ghz  130 Mbit/s  42      ▂▄__  WPA1 WPA2
  Nguoi La Oi             130 Mbit/s  42      ▂▄__  WPA1 WPA2
  Nhi Son                 130 Mbit/s  39      ▂▄__  WPA1 WPA2
  WELCOME                 130 Mbit/s  37      ▂▄__  WPA1 WPA2
  4 Á Châu Mobile 2.4Ghz  130 Mbit/s  34      ▂▄__  WPA2
  Ga Nuong O O O 2.4GHz   130 Mbit/s  34      ▂▄__  WPA2
  CAU VONG 3G             130 Mbit/s  32      ▂▄__  WPA2
  LanKhanh                130 Mbit/s  32      ▂▄__  WPA2
  Maxstudio               130 Mbit/s  29      ▂___  WPA1 WPA2
  Ga Nuong O O O 5Ghz     135 Mbit/s  27      ▂___  WPA2
  Minh Tam                130 Mbit/s  25      ▂___  WPA1 WPA2
  KYMDAN                  130 Mbit/s  22      ▂___  WPA2
  2 A Chau Mobile 5GHz    270 Mbit/s  22      ▂___  WPA1 WPA2
  Truong Quan 5Ghz        270 Mbit/s  22      ▂___  WPA1 WPA2
  thanhtuyen4             130 Mbit/s  20      ▂___  WPA2
  CAU VONG                270 Mbit/s  19      ▂___  WPA1 WPA2

$ cat w | sed 's/\([0-9A-F]\{2\}:\)\{5\}[0-9A-F]\{2\}  //g;s/Infra  [0-9]\{1,3\}\ *//g;s/\(IN-USE\|BSSID\|MODE\|CHAN\)\ \+//g;s/^\*\ */* /g;s/^\ \+/  /g;s/^SSID/  SSID/g'
  SSID                    RATE        SIGNAL  BARS  SECURITY
  NHÀ KẾ BÊN              130 Mbit/s  100     ▂▄▆█  WPA1 WPA2
* PIZZA INN 106 DTH       130 Mbit/s  89      ▂▄▆█  WPA1 WPA2
  Lien94                  130 Mbit/s  57      ▂▄▆_  WPA2
  6 Á Châu Apple          130 Mbit/s  45      ▂▄__  WPA2
  DIRECT-D3AD5759         65 Mbit/s   42      ▂▄__  WPA2
  3 A Chau Mobile 2.4Ghz  130 Mbit/s  42      ▂▄__  WPA1 WPA2
  Nguoi La Oi             130 Mbit/s  42      ▂▄__  WPA1 WPA2
  Nhi Son                 130 Mbit/s  39      ▂▄__  WPA1 WPA2
  WELCOME                 130 Mbit/s  37      ▂▄__  WPA1 WPA2
  4 Á Châu Mobile 2.4Ghz  130 Mbit/s  34      ▂▄__  WPA2
  Ga Nuong O O O 2.4GHz   130 Mbit/s  34      ▂▄__  WPA2
  CAU VONG 3G             130 Mbit/s  32      ▂▄__  WPA2
  LanKhanh                130 Mbit/s  32      ▂▄__  WPA2
  Maxstudio               130 Mbit/s  29      ▂___  WPA1 WPA2
  Ga Nuong O O O 5Ghz     135 Mbit/s  27      ▂___  WPA2
  Minh Tam                130 Mbit/s  25      ▂___  WPA1 WPA2
  KYMDAN                  130 Mbit/s  22      ▂___  WPA2
  2 A Chau Mobile 5GHz    270 Mbit/s  22      ▂___  WPA1 WPA2
  Truong Quan 5Ghz        270 Mbit/s  22      ▂___  WPA1 WPA2
  thanhtuyen4             130 Mbit/s  20      ▂___  WPA2
  CAU VONG                270 Mbit/s  19      ▂___  WPA1 WPA2


```
