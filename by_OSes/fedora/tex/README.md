### By default, Fedora does not install many texlive packages
So when you compile using the command `pdflatex`, you may encounter the following messages:
```
! LaTeX Error: File `wrapfig.sty' not found.
! LaTeX Error: File `blindtext.sty' not found.
```
These can be solved by installing packages via `dnf`.
```bash
sudo dnf install texlive-wrapfig
sudo dnf install texlive-blindtext
```
