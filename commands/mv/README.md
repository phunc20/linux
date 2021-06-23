## Rename Multiple Files
To rename multiple files, one can combine the `mv` command with **shell parameter expansion**.
For instance, you have a lot of image files
```
Pmode-001.png
Pmode-002.png
...
Pmode-999.png
```
and you suddenly need to get rid of the prefix `Pmode-` from each of them. Then you can

- Use substring
  ```sh
  for f in Pmode-{001-999}.png; do
    mv $f ${f:6}
  done
  ```
  Let's really run these.
  ```
  ~/.../commands/mv/corbeille$ ls
  ~/.../commands/mv/corbeille$ for i in {1..99}; do touch Pmode-$(printf '%03d' "$i").png; done[0/803]
  ~/.../commands/mv/corbeille$ ls
  Pmode-001.png  Pmode-018.png  Pmode-035.png  Pmode-052.png  Pmode-069.png  Pmode-086.png
  Pmode-002.png  Pmode-019.png  Pmode-036.png  Pmode-053.png  Pmode-070.png  Pmode-087.png
  Pmode-003.png  Pmode-020.png  Pmode-037.png  Pmode-054.png  Pmode-071.png  Pmode-088.png
  Pmode-004.png  Pmode-021.png  Pmode-038.png  Pmode-055.png  Pmode-072.png  Pmode-089.png
  Pmode-005.png  Pmode-022.png  Pmode-039.png  Pmode-056.png  Pmode-073.png  Pmode-090.png
  Pmode-006.png  Pmode-023.png  Pmode-040.png  Pmode-057.png  Pmode-074.png  Pmode-091.png
  Pmode-007.png  Pmode-024.png  Pmode-041.png  Pmode-058.png  Pmode-075.png  Pmode-092.png
  Pmode-008.png  Pmode-025.png  Pmode-042.png  Pmode-059.png  Pmode-076.png  Pmode-093.png
  Pmode-009.png  Pmode-026.png  Pmode-043.png  Pmode-060.png  Pmode-077.png  Pmode-094.png
  Pmode-010.png  Pmode-027.png  Pmode-044.png  Pmode-061.png  Pmode-078.png  Pmode-095.png
  Pmode-011.png  Pmode-028.png  Pmode-045.png  Pmode-062.png  Pmode-079.png  Pmode-096.png
  Pmode-012.png  Pmode-029.png  Pmode-046.png  Pmode-063.png  Pmode-080.png  Pmode-097.png
  Pmode-013.png  Pmode-030.png  Pmode-047.png  Pmode-064.png  Pmode-081.png  Pmode-098.png
  Pmode-014.png  Pmode-031.png  Pmode-048.png  Pmode-065.png  Pmode-082.png  Pmode-099.png
  Pmode-015.png  Pmode-032.png  Pmode-049.png  Pmode-066.png  Pmode-083.png
  Pmode-016.png  Pmode-033.png  Pmode-050.png  Pmode-067.png  Pmode-084.png
  Pmode-017.png  Pmode-034.png  Pmode-051.png  Pmode-068.png  Pmode-085.png
  ~/.../commands/mv/corbeille$ for f in Pmode-*.png; do mv -- $f ${f:6}; done
  ~/.../commands/mv/corbeille$ ls
  001.png  010.png  019.png  028.png  037.png  046.png  055.png  064.png  073.png  082.png  091.png
  002.png  011.png  020.png  029.png  038.png  047.png  056.png  065.png  074.png  083.png  092.png
  003.png  012.png  021.png  030.png  039.png  048.png  057.png  066.png  075.png  084.png  093.png
  004.png  013.png  022.png  031.png  040.png  049.png  058.png  067.png  076.png  085.png  094.png
  005.png  014.png  023.png  032.png  041.png  050.png  059.png  068.png  077.png  086.png  095.png
  006.png  015.png  024.png  033.png  042.png  051.png  060.png  069.png  078.png  087.png  096.png
  007.png  016.png  025.png  034.png  043.png  052.png  061.png  070.png  079.png  088.png  097.png
  008.png  017.png  026.png  035.png  044.png  053.png  062.png  071.png  080.png  089.png  098.png
  009.png  018.png  027.png  036.png  045.png  054.png  063.png  072.png  081.png  090.png  099.png
  ~/.../commands/mv/corbeille$
  ```





## References
- <https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html>
