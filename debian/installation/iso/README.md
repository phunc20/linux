## Verification
- [registered mirrors](https://www.debian.org/CD/http-ftp/#stable)
  - for example, [http://debian.cs.nctu.edu.tw/debian-cd/](http://debian.cs.nctu.edu.tw/debian-cd/)
- [https://www.debian.org/CD/verify](https://www.debian.org/CD/verify)
- [https://keyring.debian.org/](https://keyring.debian.org/)
```bash
-rw-r--r--.  1 phunc20 phunc20  833 Jan 27 18:35  SHA512SUMS.sign
-rw-r--r--.  1 phunc20 phunc20 5.3K Jan 27 18:35  SHA512SUMS
-rw-r--r--.  1 phunc20 phunc20    0 Jan 27 18:36  debian-live-10.7.0-amd64-xfce.iso
-rw-r--r--.  1 phunc20 phunc20  67K Jan 27 18:36  debian-live-10.7.0-amd64-xfce.contents
-rw-r--r--.  1 phunc20 phunc20 950K Jan 27 18:36  debian-live-10.7.0-amd64-xfce.log
-rw-r--r--.  1 phunc20 phunc20  65K Jan 27 18:36  debian-live-10.7.0-amd64-xfce.packages
-rw-------.  1 phunc20 phunc20 115M Jan 27 18:37  debian-live-10.7.0-amd64-xfce.iso.part
~/downloads ❯❯❯ less SHA512SUMS.sign 
~/downloads ❯❯❯ gpg --verify SHA512SUMS.sign 
gpg: assuming signed data in 'SHA512SUMS'
gpg: Signature made Sun 06 Dec 2020 08:46:49 AM +07
gpg:                using RSA key DF9B9C49EAA9298432589D76DA87E80D6294BE9B
gpg: Can't check signature: No public key
~/downloads ❯❯❯ gpg --keyserver keyring.debian.org --recv-keys 09EA8AC3
gpg: key 42468F4009EA8AC3: public key "Debian Testing CDs Automatic Signing Key <debian-cd@lists.debian.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
~/downloads ❯❯❯ gpg --verify SHA512SUMS.sign 
gpg: assuming signed data in 'SHA512SUMS'
gpg: Signature made Sun 06 Dec 2020 08:46:49 AM +07
gpg:                using RSA key DF9B9C49EAA9298432589D76DA87E80D6294BE9B
gpg: Can't check signature: No public key
~/downloads ❯❯❯ gpg --keyserver keyring.debian.org --recv-keys 6294BE9B
gpg: key DA87E80D6294BE9B: public key "Debian CD signing key <debian-cd@lists.debian.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1
~/downloads ❯❯❯ gpg --verify SHA512SUMS.sign 
gpg: assuming signed data in 'SHA512SUMS'
gpg: Signature made Sun 06 Dec 2020 08:46:49 AM +07
gpg:                using RSA key DF9B9C49EAA9298432589D76DA87E80D6294BE9B
gpg: Good signature from "Debian CD signing key <debian-cd@lists.debian.org>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: DF9B 9C49 EAA9 2984 3258  9D76 DA87 E80D 6294 BE9B
~/downloads ❯❯❯ 
```
