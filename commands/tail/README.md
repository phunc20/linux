## Basic usage of `tail` and `head`
- Print the 3 last lines of some file, say named `menu.txt`. The following two ways can both achieve this:
  - `tail -3 menu.txt`
  - `tail -n 3 menu.txt`
- Print a text file starting from, say the 4th line:
  - `tail --lines=+4 menu.txt`

Below is an example:
```bash
[phunc20@homography-x220t downloads]$ cat restos.csv
name,city
bun nuoc,saigon
bun mam,saigon
pho dinh,saigon
pizza,paris
[phunc20@homography-x220t downloads]$ tail --lines=+2 restos.csv
bun nuoc,saigon
bun mam,saigon
pho dinh,saigon
pizza,paris
[phunc20@homography-x220t downloads]$ tail -2 restos.csv
pho dinh,saigon
pizza,paris
[phunc20@homography-x220t downloads]$ tail -n 3 restos.csv
bun mam,saigon
pho dinh,saigon
pizza,paris
[phunc20@homography-x220t downloads]$ tail --lines=+3 restos.csv
bun mam,saigon
pho dinh,saigon
pizza,paris
[phunc20@homography-x220t downloads]$ tail --lines=+1 restos.csv
name,city
bun nuoc,saigon
bun mam,saigon
pho dinh,saigon
pizza,paris
[phunc20@homography-x220t downloads]$
```

`head` has a similar usage, at the exception that instead of `+` for `tail`, we have `-` for `head`. That is,
`head --lines=-3 menu.txt` prints all lines of `menu.txt` except the 3 last lines, e.g.

```bash
[phunc20@homography-x220t downloads]$ cat restos.csv
name,city
bun nuoc,saigon
bun mam,saigon
pho dinh,saigon
pizza,paris
[phunc20@homography-x220t downloads]$ head --lines=-1 restos.csv
name,city
bun nuoc,saigon
bun mam,saigon
pho dinh,saigon
[phunc20@homography-x220t downloads]$ head --lines=-4 restos.csv
name,city
[phunc20@homography-x220t downloads]$ head --lines=-3 restos.csv
name,city
bun nuoc,saigon
[phunc20@homography-x220t downloads]$ head -3 restos.csv
name,city
bun nuoc,saigon
bun mam,saigon
[phunc20@homography-x220t downloads]$ head -n 4 restos.csv
name,city
bun nuoc,saigon
bun mam,saigon
pho dinh,saigon
[phunc20@homography-x220t downloads]$ head --lines=4 restos.csv
name,city
bun nuoc,saigon
bun mam,saigon
pho dinh,saigon
[phunc20@homography-x220t downloads]$
```



