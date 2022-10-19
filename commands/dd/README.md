





















### Burn ISO image into a media source (USB, DVD, etc.)
- <b>arch linux</b>
```bash
sudo dd if=file.iso of=/dev/sdx status="progress"
```
- <b>blackarch linux</b>
```bash
sudo dd bs=512M if=file.iso of=/dev/sdx
```
- <b>alpine</b>
```bash
sudo dd if=<your iso filename> of=<your target media> bs=1M; sync
```

## Ref.
- <https://wiki.archlinux.org/title/Dd>
- <https://superuser.com/questions/470949/how-do-i-create-a-1gb-random-file-in-linux>



