### `! LaTeX Error: File `vietnam.sty' not found.`
If the above message appears when you `pdflatex file.tex`, it's because fedora does not install packages allowing you to type in Vietnamese already.
Install as follows.

```bash
sudo dnf install texlive-babel-vietnamese
```
