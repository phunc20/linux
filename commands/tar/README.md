## N.B.
01. <s>`tar cvf biblio.tar.bz2 biblio/`</s> is a completely **wrong** usage -- It does not compress at all; it only archives.
  - Instead, you should always specify `-z` for `gzip` and `-j` for `bzip2`
