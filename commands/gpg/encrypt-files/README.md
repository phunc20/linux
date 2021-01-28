##




## How to Copy The Secret Key to Another Machine?
- Use `gpg --list-secret-keys [email]` to locate the right key
  ```bash
  [phunc20@homography-x220t ~]$ gpg --list-secret-keys
  /home/phunc20/.gnupg/pubring.kbx
  --------------------------------
  sec   rsa4096 2021-01-01 [SC]
        31BA970CA714EB411073BB131A13431AA91024CC
  uid           [ultimate] phunc20 (for file encryption) <mupen64@gmail.com>
  ssb   rsa4096 2021-01-01 [E]
  
  [phunc20@homography-x220t ~]$ gpg --list-secret-keys mupen64@gmail.com
  sec   rsa4096 2021-01-01 [SC]
        31BA970CA714EB411073BB131A13431AA91024CC
  uid           [ultimate] phunc20 (for file encryption) <mupen64@gmail.com>
  ssb   rsa4096 2021-01-01 [E]
  
  [phunc20@homography-x220t ~]$
  ```
- Use `gpg --export-secret-keys <key_ID> > <filename>` to export the secret key to `<filename>`.
  - If `<filename>` is omitted, it will output the content to stdout.
    ```bash
    [phunc20@homography-x220t ~]$ gpg --export-secret-keys 31BA970CA714EB411073BB131A13431AA91024CC
    bF*ʩEZGF]``ڐ
    VFsBʬVLO<MnğwPcmDICchh fq48vz
              fq               Dʌi
    q7)8s:|yY/.:k
        djafidsf             ?uA൘B?F     
    iq1249qvzna                        fch$@A&2MNC
    iTiTDHbxb
    [phunc20@homography-x220t ~]$ gpg --export-secret-keys 31BA970CA714EB411073BB131A13431AA91024CC > file-encryption.key
    [phunc20@homography-x220t ~]$
    ```
- Use `scp` to copy the file to another machine, or use a USB. (Recall the syntax of `scp`: `scp file-encryption.key phunc20@192.168.0.100:~/downloads/`)
