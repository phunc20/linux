There exists several ways to do this:
01. `gs`
  ```bash
  gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=402 -dLastPage=403 -sOutputFile=p402-403.pdf homl1e.pdf
  ```
  The extracted **quality is quite good** despite the fact that the above command might return some complaining stdout/stderr on the terminal. `gs` is supposed to be installed already in most machines.
02. Use any pdf viewer program. Most of them can print (e.g. in `zathura` press `Ctrl-p`) and we may choose to print to file the pages we want.
  - **drawback**: The resulting pdf content will lean to the upper left corner, no more authentic/identical to the original.
03. `pdftk` (can be installed by `pacman -S pdftk`)
  ```bash
  pdftk homl1e.pdf cat 30-31 output p30-31.pdf
  ```
  The quality of `pdftk` is visually as good as `gs`.
