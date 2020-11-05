

### UUID
`+UUID`

```bash
~ ❯❯❯ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 465.8G  0 disk
├─sda1   8:1    0   500M  0 part /boot
├─sda2   8:2    0    12G  0 part [SWAP]
├─sda3   8:3    0    35G  0 part /
└─sda4   8:4    0 418.3G  0 part /home
sr0     11:0    1  1024M  0 rom
~ ❯❯❯ lsblk -o UUID
UUID

82e5ffa6-127e-45b6-aa32-80b480202c31
bc487b7c-6ea0-4387-a04c-a00103c3f882
604e36ba-36ec-4e13-b34e-31f4afad2a3d
c091fc51-c1d3-482c-ab4b-26252d120540

~ ❯❯❯ lsblk -o +UUID
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT UUID
sda      8:0    0 465.8G  0 disk
├─sda1   8:1    0   500M  0 part /boot      82e5ffa6-127e-45b6-aa32-80b480202c31
├─sda2   8:2    0    12G  0 part [SWAP]     bc487b7c-6ea0-4387-a04c-a00103c3f882
├─sda3   8:3    0    35G  0 part /          604e36ba-36ec-4e13-b34e-31f4afad2a3d
└─sda4   8:4    0 418.3G  0 part /home      c091fc51-c1d3-482c-ab4b-26252d120540
sr0     11:0    1  1024M  0 rom

```
