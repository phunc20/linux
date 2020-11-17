## Sometimes people will provide a `.txt` file for you
Then you can check by the command `sha256sum` with option **`-c`**
> `sha256sum -c provided.txt`



## What if not provided with a `.txt` file to check?
They would still provide you the sha256sum as strings.
- you can print the provided sha256sum to std and compare
- or better yet, use `diff` as follows
```bash
leif@CenterLap-x1carbon ~/downloads $ sha256sum Miniconda3-latest-Linux-x86_64.sh ; echo 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688
879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688  Miniconda3-latest-Linux-x86_64.sh
879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688
leif@CenterLap-x1carbon ~/downloads $ sha256sum Miniconda3-latest-Linux-x86_64.sh | cut -d' ' -f1 ; echo 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688
879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688
879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688
leif@CenterLap-x1carbon ~/downloads $ diff $(sha256sum Miniconda3-latest-Linux-x86_64.sh | cut -d' ' -f1)  $(echo 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688)
diff: 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688: No such file or directory
diff: 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688: No such file or directory
leif@CenterLap-x1carbon ~/downloads $ diff <(sha256sum Miniconda3-latest-Linux-x86_64.sh | cut -d' ' -f1)  <(echo 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688)
leif@CenterLap-x1carbon ~/downloads $ diff <(sha256sum Miniconda3-latest-Linux-x86_64.sh | cut -d' ' -f1)  <(echo 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf687)
1c1
< 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688
---
> 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf687
leif@CenterLap-x1carbon ~/downloads $ diff <(sha256sum Miniconda3-latest-Linux-x86_64.sh | cut -d' ' -f1)  <(echo 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688)
leif@CenterLap-x1carbon ~/downloads $ sha256sum Miniconda3-latest-Linux-x86_64.sh
879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688  Miniconda3-latest-Linux-x86_64.sh
leif@CenterLap-x1carbon ~/downloads $ sha256sum Miniconda3-latest-Linux-x86_64.sh > check-conda
leif@CenterLap-x1carbon ~/downloads $ sha256sum -c check-conda
Miniconda3-latest-Linux-x86_64.sh: OK
leif@CenterLap-x1carbon ~/downloads $
```

```bash
[phunc20@homography-x220t downloads]$ sha256sum Miniconda3-latest-Linux-x86_64.sh
879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688  Miniconda3-latest-Linux-x86_64.sh
[phunc20@homography-x220t downloads]$ sha256sum Miniconda3-latest-Linux-x86_64.sh | awk '{print $1}'
879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688
[phunc20@homography-x220t downloads]$ diff <(sha256sum Miniconda3-latest-Linux-x86_64.sh | awk '{print $1}') <(echo 879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688)
```
