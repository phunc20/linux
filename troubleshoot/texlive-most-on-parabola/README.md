
```bash
[phunc20@tako-x60 ~]$ pacman -S texlive-most
:: There are 12 members in group texlive-most:
:: Repository libre
   1) texlive-core  2) texlive-fontsextra  3) texlive-latexextra
:: Repository extra
   4) texlive-bibtexextra  5) texlive-formatsextra  6) texlive-games  7) texlive-humanities
   8) texlive-music  9) texlive-pictures  10) texlive-pstricks  11) texlive-publishers
   12) texlive-science

Enter a selection (default=all):
resolving dependencies...
looking for conflicting packages...

Packages (22) gd-2.3.0-1.0  libpaper-1.1.28-1.1  libsigsegv-2.12-2.0  perl-file-which-1.23-4.0
              poppler-0.90.0-1.0  potrace-1.16-2.0  run-parts-4.8.6.1-2.1  t1lib-5.1.2-8.0
              texlive-bin-2020.54586-4.parabola2  zziplib-0.13.71-1.0
              texlive-bibtexextra-2020.55376-1.0  texlive-core-2020.55416-1.par2
              texlive-fontsextra-2020.55407-1.par1  texlive-formatsextra-2020.54498-1.0
              texlive-games-2020.55271-1.0  texlive-humanities-2020.55389-1.0
              texlive-latexextra-2020.55418-1.par1  texlive-music-2020.54758-2.0
              texlive-pictures-2020.55342-1.0  texlive-pstricks-2020.55289-1.0
              texlive-publishers-2020.55415-1.0  texlive-science-2020.55390-1.0

Total Download Size:    690.90 MiB
Total Installed Size:  2194.07 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
 texlive-bin-2020.54586-4.p...    53.6 MiB   446 KiB/s 02:03 [#################################] 100%
 texlive-core-2020.55416-1....   144.3 MiB   378 KiB/s 06:31 [#################################] 100%
 texlive-fontsextra-2020.55...   480.2 MiB  6.15 MiB/s 01:18 [#################################] 100%
 texlive-latexextra-2020.55...    12.8 MiB  3.17 MiB/s 00:04 [#################################] 100%
(22/22) checking keys in keyring                             [#################################] 100%
(22/22) checking package integrity                           [#################################] 100%
(22/22) loading package files                                [#################################] 100%
(22/22) checking for file conflicts                          [#################################] 100%
(22/22) checking available disk space                        [#################################] 100%
:: Processing package changes...
( 1/22) installing t1lib                                     [#################################] 100%
( 2/22) installing gd                                        [#################################] 100%
Optional dependencies for gd
    perl: bdftogd script [installed]
( 3/22) installing poppler                                   [#################################] 100%
Optional dependencies for poppler
    poppler-data: encoding data to display PDF documents containing CJK characters
( 4/22) installing libsigsegv                                [#################################] 100%
( 5/22) installing zziplib                                   [#################################] 100%
( 6/22) installing potrace                                   [#################################] 100%
( 7/22) installing run-parts                                 [#################################] 100%
( 8/22) installing libpaper                                  [#################################] 100%
( 9/22) installing texlive-bin                               [#################################] 100%
Optional dependencies for texlive-bin
    ed: for texconfig [installed]
    biber: for bibliography processing
(10/22) installing texlive-core                              [#################################] 100%
>>> updmap custom entries should go into /etc/texmf/web2c/updmap-local.cfg
>>> fmtutil custom entries should go into /etc/texmf/web2c/fmtutil-local.cnf
NB: To setup ConTeXt and the lua(la)tex font db,
    see http://wiki.archlinux.org/index.php/TeX_Live
Optional dependencies for texlive-core
    dialog: for texconfig [installed]
    ghostscript: for epstopdf, epspdf and other ConTeXt tools
    java-runtime: for utilities like arara, texplate
    perl-tk: for texdoctk
    psutils: to manipulate the output of dvips
    python: for pythontex [installed]
    python2: for dviasm [installed]
    ruby: for old ConTeXT MkII and epspdf
    t1utils: can be useful when installing Type1 fonts
(11/22) installing texlive-fontsextra                        [#################################] 100%
(12/22) installing perl-file-which                           [#################################] 100%
(13/22) installing texlive-latexextra                        [#################################] 100%
Optional dependencies for texlive-latexextra
    python2-pygments: for pygmentex
    texlive-genericextra: to use the calctab package [installed]
    texlive-pictures: to use the package overpic [pending]
    java-environment: to use pdfannotextractor
(14/22) installing texlive-bibtexextra                       [#################################] 100%
(15/22) installing texlive-formatsextra                      [#################################] 100%
(16/22) installing texlive-games                             [#################################] 100%
(17/22) installing texlive-humanities                        [#################################] 100%
Optional dependencies for texlive-humanities
    texlive-pictures: for package qtree [pending]
(18/22) installing texlive-music                             [#################################] 100%
Optional dependencies for texlive-music
    python: for scripts from the lilyglyphs packages [installed]
    fontforge: for scripts from the lilyglyphs packages
(19/22) installing texlive-pictures                          [#################################] 100%
(20/22) installing texlive-pstricks                          [#################################] 100%
(21/22) installing texlive-publishers                        [#################################] 100%
(22/22) installing texlive-science                           [#################################] 100%
:: Running post-transaction hooks...
(1/7) Arming ConditionNeedsUpdate...
(2/7) Warn about old perl modules
(3/7) Updating TeXLive filename database...
(4/7) Updating the info directory file...
(5/7) Updating TeXLive format files...

kpathsea: Running mktextfm csr10
mktextfm: Running mf-nowin -progname=mf \mode:=ljfour; mag:=1; ; nonstopmode; input csr10
This is METAFONT, Version 2.7182818 (TeX Live 2020/Parabola GNU/Linux-libre) (preloaded base=mf)

kpathsea: Running mktexmf csr10

! I can't find file `csr10'.
<*> ...=ljfour; mag:=1; ; nonstopmode; input csr10

Please type another input file name
! Emergency stop.
<*> ...=ljfour; mag:=1; ; nonstopmode; input csr10

Transcript written on mfput.log.
grep: csr10.log: No such file or directory
mktextfm: `mf-nowin -progname=mf \mode:=ljfour; mag:=1; ; nonstopmode; input csr10' failed to make cs
r10.tfm.
kpathsea: Appending font creation commands to missfont.log.
kpathsea: Running mktextfm csr10
mktextfm: Running mf-nowin -progname=mf \mode:=ljfour; mag:=1; ; nonstopmode; input csr10
This is METAFONT, Version 2.7182818 (TeX Live 2020/Parabola GNU/Linux-libre) (preloaded base=mf)

kpathsea: Running mktexmf csr10

! I can't find file `csr10'.
<*> ...=ljfour; mag:=1; ; nonstopmode; input csr10

Please type another input file name
! Emergency stop.
<*> ...=ljfour; mag:=1; ; nonstopmode; input csr10

Transcript written on mfput.log.
grep: csr10.log: No such file or directory
mktextfm: `mf-nowin -progname=mf \mode:=ljfour; mag:=1; ; nonstopmode; input csr10' failed to make cs
r10.tfm.
kpathsea: Appending font creation commands to missfont.log.

kpathsea: Running mktextfm csr10
mktextfm: Running mf-nowin -progname=mf \mode:=ljfour; mag:=1; ; nonstopmode; input csr10
This is METAFONT, Version 2.7182818 (TeX Live 2020/Parabola GNU/Linux-libre) (preloaded base=mf)

kpathsea: Running mktexmf csr10

! I can't find file `csr10'.
<*> ...=ljfour; mag:=1; ; nonstopmode; input csr10

Please type another input file name
! Emergency stop.
<*> ...=ljfour; mag:=1; ; nonstopmode; input csr10

Transcript written on mfput.log.
grep: csr10.log: No such file or directory
mktextfm: `mf-nowin -progname=mf \mode:=ljfour; mag:=1; ; nonstopmode; input csr10' failed to make cs
r10.tfm.
kpathsea: Appending font creation commands to missfont.log.
fmtutil [WARNING]: inifile mex.ini for mex/pdftex not found.
fmtutil [WARNING]: inifile pdfmex.ini for pdfmex/pdftex not found.
fmtutil [ERROR]: running `luatex -ini   -jobname=pdfcsplain -progname=pdfcsplain -etex csplain.ini </
dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `xetex -ini   -jobname=pdfcsplain -progname=pdfcsplain -etex csplain.ini </d
ev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `pdftex -ini   -jobname=pdfcsplain -progname=pdfcsplain -etex -enc csplain-u
tf8.ini </dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `pdftex -ini   -jobname=utf8mex -progname=utf8mex -enc *utf8mex.ini </dev/nu
ll' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `luatex -ini   -jobname=luacsplain -progname=luacsplain -etex csplain.ini </
dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `pdftex -ini   -jobname=csplain -progname=csplain -etex -enc csplain-utf8.in
i </dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
Transcript written on mfput.log.
grep: csr10.log: No such file or directory
mktextfm: `mf-nowin -progname=mf \mode:=ljfour; mag:=1; ; nonstopmode; input csr10' failed to make csr10.tfm.
kpathsea: Appending font creation commands to missfont.log.
fmtutil [WARNING]: inifile mex.ini for mex/pdftex not found.
fmtutil [WARNING]: inifile pdfmex.ini for pdfmex/pdftex not found.
fmtutil [ERROR]: running `luatex -ini   -jobname=pdfcsplain -progname=pdfcsplain -etex csplain.ini </dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `xetex -ini   -jobname=pdfcsplain -progname=pdfcsplain -etex csplain.ini </dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `pdftex -ini   -jobname=pdfcsplain -progname=pdfcsplain -etex -enc csplain-utf8.ini </dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `pdftex -ini   -jobname=utf8mex -progname=utf8mex -enc *utf8mex.ini </dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `luatex -ini   -jobname=luacsplain -progname=luacsplain -etex csplain.ini </dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
fmtutil [ERROR]: running `pdftex -ini   -jobname=csplain -progname=csplain -etex -enc csplain-utf8.ini </dev/null' return status: 1
fmtutil [ERROR]: returning error due to option --strict
error: command failed to execute correctly
(6/7) Updating TeXLive font maps...
(7/7) Updating the desktop file MIME type cache...
```
