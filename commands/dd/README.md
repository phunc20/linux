





















### Burn ISO image into a media source (USB, DVD, etc.)
- <b>arch linux</b>
```bash
sudo dd if=file.iso of=/dev/sdX status="progress"
```
- <b>blackarch linux</b>
```bash
sudo dd bs=512M if=file.iso of=/dev/sdX
```
- <b>alpine</b>
```bash
sudo dd if=<your iso filename> of=<your target media> bs=1M; sync
```







