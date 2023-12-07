## N.B.
01. **`tar cvf biblio.tar.bz2 biblio/`** is a completely **incorrect** usage -- It **does not compress at all**; it only archives.
    - Instead, you should always specify `-z` for `gzip` and `-j` for `bzip2`



## Equiv. to `unzip -d <dirname>`
Sometimes a `.tar` file is archived in a way such that, when decompressed,
a lot of archived files just get scattered in `$PWD`.
For the `unzip` command, we use the `-d` option; for `tar`, we can use
the **`--one-top-level`** option as follows.
```bash
~/downloads $ ls
jsb_chorales.tar
~/downloads $ tar tf jsb_chorales.tar | head -10
test/
test/chorale_359.csv
test/chorale_371.csv
test/chorale_365.csv
test/chorale_364.csv
test/chorale_370.csv
test/chorale_358.csv
test/chorale_366.csv
test/chorale_372.csv
test/chorale_373.csv
~/downloads $ tar xf jsb_chorales.tar --one-top-level=Bach
~/downloads $ ls
Bach  jsb_chorales.tar
~/downloads $
```
