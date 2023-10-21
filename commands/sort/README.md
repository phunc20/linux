## Usecases
- Sort CSV-like output according one particular column, e.g. sha256 sum of a bunch of images
  ```bash
  $ find . -name "*.jpg" -exec sha256sum {} \; | sort -t' ' -k1,1
  01a295e50853c0d7ca33820bf5aefafda322839a5a8f7e3b65c17217afe16dc0  ./MD2/new-name-7.jpg
  01a295e50853c0d7ca33820bf5aefafda322839a5a8f7e3b65c17217afe16dc0  ./MD3/new-name-8.jpg
  735aa27fbab2e85dded9ae4509911b1fee77f62a61b1861c9551345dc20a7789  ./MD1/new-name-1.jpg
  8a9c2932eca4aa64e1735ecaa81a704cdfa4d80bbbc8518f288665c435415225  ./MD3/new-name-11.jpg
  950d0fa9dbb4a65a1f300cf8a7a36492abf7b33bcfa870c889859ee3fd9015b9  ./MD2/new-name-6.jpg
  b4870f49b212ed7d6b4943ea404c9f0b0f8800acd65caa726c61b5b03a682759  ./MD1/new-name-3.jpg
  b9869445cf87cfdcce6e0717bb523a63c2ff48dba3c36fdfb7e875b13eb7f421  ./MD3/new-name-10.jpg
  b9869445cf87cfdcce6e0717bb523a63c2ff48dba3c36fdfb7e875b13eb7f421  ./MD2/new-name-4.jpg
  d0e196abf82be2dd87cd84502219fb5431433147c88d089f0d71b9155298ed10  ./MD1/new-name-2.jpg
  e20208e4c13e3dc7a096156db690213b24d6e6aa552db060a3870e6399e7eef5  ./MD1/new-name-0.jpg
  ed2b83ed2834c26c6bae180c7ee40f9301a4da5e66851d7d7bc1ec3ff6eabd32  ./MD3/new-name-9.jpg
  f41b31a7b356ae7fee262bf7516e303314adab319682b3cbfed10ba9d597aede  ./MD2/new-name-5.jpg
  $ find . -name "*.jpg" -exec sha256sum {} \; | sort -t' ' -k1,1 | wc -l
  12
  ```
    - `-t` is to specify the separator
    - `-k` is to specify the keys to be sorted
  One purpose behind such manipulation is to find repeated files. Using `-u` of `sort`
  helps print out only the unique sha256 sums:
  ```bash
  $ find . -name "*.jpg" -exec sha256sum {} \; | sort -u -t' ' -k1,1
  01a295e50853c0d7ca33820bf5aefafda322839a5a8f7e3b65c17217afe16dc0  ./MD2/new-name-7.jpg
  735aa27fbab2e85dded9ae4509911b1fee77f62a61b1861c9551345dc20a7789  ./MD1/new-name-1.jpg
  8a9c2932eca4aa64e1735ecaa81a704cdfa4d80bbbc8518f288665c435415225  ./MD3/new-name-11.jpg
  950d0fa9dbb4a65a1f300cf8a7a36492abf7b33bcfa870c889859ee3fd9015b9  ./MD2/new-name-6.jpg
  b4870f49b212ed7d6b4943ea404c9f0b0f8800acd65caa726c61b5b03a682759  ./MD1/new-name-3.jpg
  b9869445cf87cfdcce6e0717bb523a63c2ff48dba3c36fdfb7e875b13eb7f421  ./MD3/new-name-10.jpg
  d0e196abf82be2dd87cd84502219fb5431433147c88d089f0d71b9155298ed10  ./MD1/new-name-2.jpg
  e20208e4c13e3dc7a096156db690213b24d6e6aa552db060a3870e6399e7eef5  ./MD1/new-name-0.jpg
  ed2b83ed2834c26c6bae180c7ee40f9301a4da5e66851d7d7bc1ec3ff6eabd32  ./MD3/new-name-9.jpg
  f41b31a7b356ae7fee262bf7516e303314adab319682b3cbfed10ba9d597aede  ./MD2/new-name-5.jpg
  $ find . -name "*.jpg" -exec sha256sum {} \; | sort -u -t' ' -k1,1 | wc -l
  10
  ```
  To visualize the repeated files:
  ```bash
  $ find . -name "*.jpg" -exec sha256sum {} \; | sort -t' ' -k1,1 | uniq -d -w 64
  01a295e50853c0d7ca33820bf5aefafda322839a5a8f7e3b65c17217afe16dc0  ./MD2/new-name-7.jpg
  01a295e50853c0d7ca33820bf5aefafda322839a5a8f7e3b65c17217afe16dc0  ./MD3/new-name-8.jpg
  b9869445cf87cfdcce6e0717bb523a63c2ff48dba3c36fdfb7e875b13eb7f421  ./MD3/new-name-10.jpg
  b9869445cf87cfdcce6e0717bb523a63c2ff48dba3c36fdfb7e875b13eb7f421  ./MD2/new-name-4.jpg
  $ find . -name "*.jpg" -exec sha256sum {} \; | sort -t' ' -k1,1 | uniq -D -w 64
  01a295e50853c0d7ca33820bf5aefafda322839a5a8f7e3b65c17217afe16dc0  ./MD2/new-name-7.jpg
  b9869445cf87cfdcce6e0717bb523a63c2ff48dba3c36fdfb7e875b13eb7f421  ./MD3/new-name-10.jpg
  $ find . -name "*.jpg" -exec sha256sum {} \; | sort -t' ' -k1,1 | uniq -D -w 64 | wc -l
  2
  ```
