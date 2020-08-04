

## How to Verify A Signature?
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
