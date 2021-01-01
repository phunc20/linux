## `chgrp` can be used to change a file/folder's group
For example, there are folders that can only be accessed by `root`. Some of them are not that dangerous,
and you would like to allow some of your users to have access to as well. The folder `/etc/NetworkManager/system-connections/` is such an example: (cf. **`../nmcli/README.md`**)

options
- **`-R`**: recursively

```bash
/etc/NetworkManager ❯❯❯ ls -l system-connections/
total 80K
-rw------- 1 root root 428 Oct 28 14:44 'MYLIFE ALEXANDRE.nmconnection'
-rw------- 1 root root 407 Oct 28 17:49  KimChi.nmconnection
-rw------- 1 root root 352 Oct 29 12:08 'AMHAUS CAFE.nmconnection'
-rw------- 1 root root 350 Nov 15 10:52 'Sweet Home.nmconnection'
-rw------- 1 root root 412 Dec  6 21:43 'Gia Nguyen L2 T.nmconnection'
-rw------- 1 root root 414 Dec  8 18:17 'Gia Nguyen L2 T 1.nmconnection'
-rw------- 1 root root 412 Dec  9 10:37 'Gia Nguyen L2 S.nmconnection'
-rw------- 1 root root 348 Dec 10 14:14 'Gia Nguyen.nmconnection'
-rw------- 1 root root 446 Dec 20 20:21 'MYLIFE ALEXANDRE 1.nmconnection'
-rw------- 1 root root 410 Dec 20 20:22 'MYLIFE ALEXANDRE 2.nmconnection'
-rw------- 1 root root 412 Dec 24 17:51 'Gia Nguyen L2 T 2.nmconnection'
-rw------- 1 root root 365 Dec 26 14:58 'BREADY BANH MI TUOI.nmconnection'
-rw------- 1 root root 412 Dec 28 17:50 'Gia Nguyen L2 S 1.nmconnection'
-rw------- 1 root root 352 Dec 29 09:53 'AMHAUS CAFE 1.nmconnection'
-rw------- 1 root root 337 Dec 29 12:57 'Do Phu.nmconnection'
-rw------- 1 root root 338 Dec 29 17:46  AMOR_5G.nmconnection
-rw------- 1 root root 332 Dec 29 17:46  AMOR.nmconnection
-rw------- 1 root root 363 Dec 30 11:45 'Hotel Phuong Dong.nmconnection'
-rw------- 1 root root 352 Dec 30 12:44 'Lau  Bo Xao Da.nmconnection'
-rw------- 1 root root 334 Dec 31 11:12 'Vu Anh.nmconnection'
/etc/NetworkManager ❯❯❯ ls -dl system-connections/
drwx------ 2 root root 4096 Dec 31 11:12 system-connections/
/etc/NetworkManager ❯❯❯ chgrp wheel system-connections/
/etc/NetworkManager ❯❯❯ ls -dl system-connections/
drwx------ 2 root wheel 4096 Dec 31 11:12 system-connections/
/etc/NetworkManager ❯❯❯ ls -l system-connections/
total 80K
-rw------- 1 root root 428 Oct 28 14:44 'MYLIFE ALEXANDRE.nmconnection'
-rw------- 1 root root 407 Oct 28 17:49  KimChi.nmconnection
-rw------- 1 root root 352 Oct 29 12:08 'AMHAUS CAFE.nmconnection'
-rw------- 1 root root 350 Nov 15 10:52 'Sweet Home.nmconnection'
-rw------- 1 root root 412 Dec  6 21:43 'Gia Nguyen L2 T.nmconnection'
-rw------- 1 root root 414 Dec  8 18:17 'Gia Nguyen L2 T 1.nmconnection'
-rw------- 1 root root 412 Dec  9 10:37 'Gia Nguyen L2 S.nmconnection'
-rw------- 1 root root 348 Dec 10 14:14 'Gia Nguyen.nmconnection'
-rw------- 1 root root 446 Dec 20 20:21 'MYLIFE ALEXANDRE 1.nmconnection'
-rw------- 1 root root 410 Dec 20 20:22 'MYLIFE ALEXANDRE 2.nmconnection'
-rw------- 1 root root 412 Dec 24 17:51 'Gia Nguyen L2 T 2.nmconnection'
-rw------- 1 root root 365 Dec 26 14:58 'BREADY BANH MI TUOI.nmconnection'
-rw------- 1 root root 412 Dec 28 17:50 'Gia Nguyen L2 S 1.nmconnection'
-rw------- 1 root root 352 Dec 29 09:53 'AMHAUS CAFE 1.nmconnection'
-rw------- 1 root root 337 Dec 29 12:57 'Do Phu.nmconnection'
-rw------- 1 root root 338 Dec 29 17:46  AMOR_5G.nmconnection
-rw------- 1 root root 332 Dec 29 17:46  AMOR.nmconnection
-rw------- 1 root root 363 Dec 30 11:45 'Hotel Phuong Dong.nmconnection'
-rw------- 1 root root 352 Dec 30 12:44 'Lau  Bo Xao Da.nmconnection'
-rw------- 1 root root 334 Dec 31 11:12 'Vu Anh.nmconnection'
/etc/NetworkManager ❯❯❯ chgrp -R wheel system-connections/
/etc/NetworkManager ❯❯❯ ls -l system-connections/
total 80K
-rw------- 1 root wheel 428 Oct 28 14:44 'MYLIFE ALEXANDRE.nmconnection'
-rw------- 1 root wheel 407 Oct 28 17:49  KimChi.nmconnection
-rw------- 1 root wheel 352 Oct 29 12:08 'AMHAUS CAFE.nmconnection'
-rw------- 1 root wheel 350 Nov 15 10:52 'Sweet Home.nmconnection'
-rw------- 1 root wheel 412 Dec  6 21:43 'Gia Nguyen L2 T.nmconnection'
-rw------- 1 root wheel 414 Dec  8 18:17 'Gia Nguyen L2 T 1.nmconnection'
-rw------- 1 root wheel 412 Dec  9 10:37 'Gia Nguyen L2 S.nmconnection'
-rw------- 1 root wheel 348 Dec 10 14:14 'Gia Nguyen.nmconnection'
-rw------- 1 root wheel 446 Dec 20 20:21 'MYLIFE ALEXANDRE 1.nmconnection'
-rw------- 1 root wheel 410 Dec 20 20:22 'MYLIFE ALEXANDRE 2.nmconnection'
-rw------- 1 root wheel 412 Dec 24 17:51 'Gia Nguyen L2 T 2.nmconnection'
-rw------- 1 root wheel 365 Dec 26 14:58 'BREADY BANH MI TUOI.nmconnection'
-rw------- 1 root wheel 412 Dec 28 17:50 'Gia Nguyen L2 S 1.nmconnection'
-rw------- 1 root wheel 352 Dec 29 09:53 'AMHAUS CAFE 1.nmconnection'
-rw------- 1 root wheel 337 Dec 29 12:57 'Do Phu.nmconnection'
-rw------- 1 root wheel 338 Dec 29 17:46  AMOR_5G.nmconnection
-rw------- 1 root wheel 332 Dec 29 17:46  AMOR.nmconnection
-rw------- 1 root wheel 363 Dec 30 11:45 'Hotel Phuong Dong.nmconnection'
-rw------- 1 root wheel 352 Dec 30 12:44 'Lau  Bo Xao Da.nmconnection'
-rw------- 1 root wheel 334 Dec 31 11:12 'Vu Anh.nmconnection'
/etc/NetworkManager ❯❯❯ ls -ld system-connections/
drwx------ 2 root wheel 4096 Dec 31 11:12 system-connections/
/etc/NetworkManager ❯❯❯
```
