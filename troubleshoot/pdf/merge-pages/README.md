There exists several ways to do this:
01. If we are using $\LaTeX$ and we want to include an external pdf file:
  ```tex
  \usepackage{pdfpages}
  % include all pages from a pdf file
  \includepdf[pages=-]{homl1e.pdf}
  % include the 1st pages from a pdf file
  \includepdf[pages={1}]{homl1e.pdf}
  ```
02. `pdfunite p380.pdf recurrent-neurons.pdf merged.pdf`
  - The last specified file is the merged output.
  - `pdfunite` is a command from the `poppler` package (which can be installed by `pacman -S poppler` on arch-based distros)
