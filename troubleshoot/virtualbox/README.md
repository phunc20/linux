## Installation
- `pacman -S virtualbox`


## side note
> _the only people who should see this signature issue are people who did not update their system in 45 days. (Why are you going 45 days without updates?)_ -- `eschwartz`

I was installing `virtualbox` and I found that it seemed to need `linux-headers` and as I installed `linux-headers`, it showed a diff kernel version from `uname -r`. (`5.8.13-arch1-1` vs `linux-headers-5.9.12.arch1-1`).

So I figured that I should do `pacman -Syu` but it seemed that it had been such a long time since I had avoided `-Syu` (I have only been doing `-Sy`). And according to `eschwartz` above, on a rolling release distro, it's better to frequently do upgrade.

So I met this issue of **signature unknown trust**, and eventually it was solved by **`pacman -Sy archlinux-keyring && pacman -Su`** as suggested by [https://wiki.archlinux.org/index.php/Pacman#Signature_from_%22User_%3Cemail@example.org%3E%22_is_unknown_trust,_installation_failed](https://wiki.archlinux.org/index.php/Pacman#Signature_from_%22User_%3Cemail@example.org%3E%22_is_unknown_trust,_installation_failed).


