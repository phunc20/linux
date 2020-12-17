

## How to Verify A Signature?
- First we have to import the associated public key 
  - **`gpg --receive-keys <key_id | fingerprint>`**
  - `key_id` is usually a string of `4*4=16` hexadecimal digits like ![gpg public key example](fig/python-pubkey.png)
  - `fingerprint` is sth similar, consisting of `4*10=40` hexadecimal digits ![fingerprint example](fig/fingerprint.png)
- [https://www.devdungeon.com/content/how-verify-gpg-signature](https://www.devdungeon.com/content/how-verify-gpg-signature)


```
[phunc20@artichaut-x220 downloads]$ ls *julia*
julia-1.5.0-linux-x86_64.tar.gz      julia-1.5.0.tar.gz      juliareleases.asc
julia-1.5.0-linux-x86_64.tar.gz.asc  julia-1.5.0.tar.gz.asc
[phunc20@artichaut-x220 downloads]$
[phunc20@artichaut-x220 downloads]$ gpg --import juliareleases.asc
gpg: key 66E3C7DC03D6E495: public key "Julia (Binary signing key) <buildbot@julialang.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
[phunc20@artichaut-x220 downloads]$ gpg --verify julia-1.5.0-linux-x86_64.tar.gz.asc
gpg: assuming signed data in 'julia-1.5.0-linux-x86_64.tar.gz'
gpg: Signature made Sun 02 Aug 2020 09:23:20 AM +07
gpg:                using RSA key 3673DF529D9049477F76B37566E3C7DC03D6E495
gpg:                issuer "buildbot@julialang.org"
gpg: Good signature from "Julia (Binary signing key) <buildbot@julialang.org>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 3673 DF52 9D90 4947 7F76  B375 66E3 C7DC 03D6 E495
[phunc20@artichaut-x220 downloads]$ gpg --verify julia-1.5.0.tar.gz.asc
gpg: assuming signed data in 'julia-1.5.0.tar.gz'
gpg: Signature made Sun 02 Aug 2020 07:59:33 AM +07
gpg:                using RSA key 3673DF529D9049477F76B37566E3C7DC03D6E495
gpg:                issuer "buildbot@julialang.org"
gpg: Good signature from "Julia (Binary signing key) <buildbot@julialang.org>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 3673 DF52 9D90 4947 7F76  B375 66E3 C7DC 03D6 E495
[phunc20@artichaut-x220 downloads]$
```

## Example: Debian iso
```bash
[phunc20@homography-x220t debian-iso]$ ll
total 3.7G
-rw-r--r-- 1 transmission transmission 3.7G Dec 15 15:37 debian-10.7.0-amd64-DVD-1.iso
-rw-r--r-- 1 phunc20      phunc20      3.0K Dec 17 10:54 SHA512SUMS.txt
-rw-r--r-- 1 phunc20      phunc20       833 Dec 17 10:54 SHA512SUMS.sign.txt
[phunc20@homography-x220t debian-iso]$ gpg --recv-key "F41D 3034 2F35 4669 5F65  C669 4246 8F40 09EA 8AC3"
gpg: key 42468F4009EA8AC3: public key "Debian Testing CDs Automatic Signing Key <debian-cd@lists.debian.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
[phunc20@homography-x220t debian-iso]$ gpg --verify SHA512SUMS.sign.txt SHA512SUMS.txt
gpg: Signature made Sun 06 Dec 2020 08:46:12 AM +07
gpg:                using RSA key DF9B9C49EAA9298432589D76DA87E80D6294BE9B
gpg: Can't check signature: No public key
[phunc20@homography-x220t debian-iso]$
```

#### Note
- Error message if you do only **`gpg --verify SHA512SUMS.sign.txt`**
  ```bash
  [phunc20@homography-x220t debian-iso]$ gpg --verify SHA512SUMS.sign.txt
  gpg: no signed data
  gpg: can't hash datafile: No data
  ```
- This is because, it concerns a **detached signature** and expects you to provide another file with data in it; otherwise, it will assume the data file named **one extension less**, e.g. if the signature is `foo.bar` then `gpg` will expect the data file named `foo`.
- Consequently, had you named the files `SHA512SUMS` and `SHA512SUMS.sign` instead, you'll have no trouble:
  ```bash
  [phunc20@homography-x220t debian-iso]$ ll
  total 3.7G
  -rw-r--r-- 1 transmission transmission 3.7G Dec 15 15:37 debian-10.7.0-amd64-DVD-1.iso
  -rw-r--r-- 1 phunc20      phunc20      3.0K Dec 17 10:54 SHA512SUMS
  -rw-r--r-- 1 phunc20      phunc20       833 Dec 17 10:54 SHA512SUMS.sign
  [phunc20@homography-x220t debian-iso]$ gpg --verify SHA512SUMS.sign
  gpg: assuming signed data in 'SHA512SUMS'
  gpg: Signature made Sun 06 Dec 2020 08:46:12 AM +07
  gpg:                using RSA key DF9B9C49EAA9298432589D76DA87E80D6294BE9B
  gpg: Can't check signature: No public key
  ```
- The verification message above seems to indicate that the verification had failed. Note that
  - The fingerprints I typed have been provided [https://www.debian.org/CD/verify](https://www.debian.org/CD/verify)
  - And the above link is clearly mentioned in the [installation guide](https://cdimage.debian.org/debian-cd/current/amd64/bt-dvd/)
  - There are several signatures provided, so if one is not enough, just add the others: (It seems that `--keyserver` is optional. `--recv-keys` suffices. Besides, `--receive-keys <fingerprint>` and `--receive-key <fingerprint>`, i.e. with or w/o `s`, seems to be the same.)
    ```bash
    [phunc20@homography-x220t debian-iso]$ gpg --keyserver keyring.debian.org --recv-keys "F41D 3034 2F35 4669 5F65  C669 4246 8F40 09EA 8AC3"
    gpg: key 42468F4009EA8AC3: "Debian Testing CDs Automatic Signing Key <debian-cd@lists.debian.org>" not changed
    gpg: Total number processed: 1
    gpg:              unchanged: 1
    [phunc20@homography-x220t debian-iso]$ gpg --verify SHA512SUMS.sign
    gpg: assuming signed data in 'SHA512SUMS'
    gpg: Signature made Sun 06 Dec 2020 08:46:12 AM +07
    gpg:                using RSA key DF9B9C49EAA9298432589D76DA87E80D6294BE9B
    gpg: Can't check signature: No public key
    [phunc20@homography-x220t debian-iso]$ gpg --keyserver keyring.debian.org --recv-keys "DF9B 9C49 EAA9 2984 3258  9D76 DA87 E80D 6294 BE9B"
    gpg: key DA87E80D6294BE9B: public key "Debian CD signing key <debian-cd@lists.debian.org>" imported
    gpg: Total number processed: 1
    gpg:               imported: 1
    [phunc20@homography-x220t debian-iso]$ gpg --verify SHA512SUMS.sign
    gpg: assuming signed data in 'SHA512SUMS'
    gpg: Signature made Sun 06 Dec 2020 08:46:12 AM +07
    gpg:                using RSA key DF9B9C49EAA9298432589D76DA87E80D6294BE9B
    gpg: Good signature from "Debian CD signing key <debian-cd@lists.debian.org>" [unknown]
    gpg: WARNING: This key is not certified with a trusted signature!
    gpg:          There is no indication that the signature belongs to the owner.
    Primary key fingerprint: DF9B 9C49 EAA9 2984 3258  9D76 DA87 E80D 6294 BE9B
    [phunc20@homography-x220t debian-iso]$
    ```
