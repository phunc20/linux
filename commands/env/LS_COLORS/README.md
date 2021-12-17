A way to systematically change `LS_COLORS` is thru `~/.bashrc`. Put
the following lines into your `~/.bashrc`:

```bash
LS_COLORS=$(echo $LS_COLORS | sed "s/:di=[0-9]\{2\};[0-9]\{2\}/:di=01;33/g")
export LS_COLORS
```

**Note.**<br>
1. The assignment of the environment variable and the `export` should be put _in separate lines_, i.e. **do not** use the single-line
  ```
  # Bad practice
  export LS_COLORS=$(echo $LS_COLORS | sed "s/:di=[0-9]\{2\};[0-9]\{2\}/:di=01;33/g")
  ```
1. `01;33` is **bold yellow**. Often the default is `01;34` which is sort of btw purple and blue, and which is hard to see clearly. Change it to your likings if you find it invisible, too:
  - <http://www.bigsoft.co.uk/blog/2008/04/11/configuring-ls_colors>
  - The first two digits represents the **effect**
  | code | property |
  |------|----------|
  |  00  |  default |
  |  01  |  bold |
  |  04  |  underlined |
  |  05  |  flashing text |
  |  07  |  reversed |
  |  08  |  concealed |
  - The second two digits represents the **color**
  | code | property |
  |------|----------|
  |  30  |  black |
  |  01  |  bold |
  |  04  |  underlined |
  |  05  |  flashing text |
  |  07  |  reversed |
  |  08  |  concealed |




