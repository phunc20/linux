
- syntax: `cut -d'c' -fn`
- `-d` delimiter (followed by **a char**)
- `-f` field (followed by **a int**)
- cut: the delimiter must be a single character


```bash
[phunc20@homography-x220t madmom_tutorials]$ echo "f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip" | cut -f 1
f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip
[phunc20@homography-x220t madmom_tutorials]$ echo "f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip" | cut -f1
f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip
[phunc20@homography-x220t madmom_tutorials]$ echo "f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip" | cut -d' ' -f1
f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2
[phunc20@homography-x220t madmom_tutorials]$ echo "f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip" | cut -d'  ' -f1
cut: the delimiter must be a single character
Try 'cut --help' for more information.
[phunc20@homography-x220t madmom_tutorials]$ echo "f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip" | cut -d' ' -f2

[phunc20@homography-x220t madmom_tutorials]$ echo "f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip" | cut -d' ' -f3
WinDev2011Eval.VirtualBox.zip
[phunc20@homography-x220t madmom_tutorials]$ echo "f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip" | cut -d' ' -f 3
WinDev2011Eval.VirtualBox.zip
[phunc20@homography-x220t madmom_tutorials]$ echo "f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2  WinDev2011Eval.VirtualBox.zip" | cut -d' ' -f 1
f2501414500271cfa099bbbf8f3eb00eeb3138a6fd12554e4da33960480a28a2
[phunc20@homography-x220t madmom_tutorials]$
```
