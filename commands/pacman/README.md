#### General update after installing from ISO image
```bash
sudo pacman -Syyu
```



### A few tricks
- To see all the packages belonging to a **package group**, e.g. <code>texlive-most</code>, <code>texlive-lang</code>, use the <code><b>-Sg</b></code> option.
```bash
[phunc20@denjiro-x220 brave]$ pacman -Sg texlive-most
texlive-most texlive-bibtexextra
texlive-most texlive-core
texlive-most texlive-fontsextra
texlive-most texlive-formatsextra
texlive-most texlive-games
texlive-most texlive-humanities
texlive-most texlive-latexextra
texlive-most texlive-music
texlive-most texlive-pictures
texlive-most texlive-pstricks
texlive-most texlive-publishers
texlive-most texlive-science
[phunc20@denjiro-x220 brave]$ pacman -Sg texlive-lang
texlive-lang texlive-langchinese
texlive-lang texlive-langcyrillic
texlive-lang texlive-langextra
texlive-lang texlive-langgreek
texlive-lang texlive-langjapanese
texlive-lang texlive-langkorean
```
- <code><b>pacman -Ssq package_regex</b></code> where <code><b>-q</b></code> stands for <b>quiet</b>.

