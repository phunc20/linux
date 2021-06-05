

### How to download file from the Internet to somewhere other than <code>pwd</code>?
<code><b>curl -fLo \<local\_dir\> --create-dirs \<file\_URL\></b></code>


```bash
[phunc20@denjiro-x220 ~]$ ls -d .*/
../  .cache/   .gnupg/    .julia/  .local/  .mozilla/  .useful-scripts/
./   .config/  .ipython/  .keras/  .mdp/    .pki/      .virtualenvs/
[phunc20@denjiro-x220 ~]$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
>     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 82336  100 82336    0     0  13837      0  0:00:05  0:00:05 --:--:-- 17555
[phunc20@denjiro-x220 ~]$ tree ~/.vim/
/home/phunc20/.vim/
└── autoload
    └── plug.vim

1 directory, 1 file

```

## How to Continue An Interrupted Download?
- If you didn't specify a specific name for the download, then do
  ```bash
  curl -LO -C - "url"
  ```
- If you did specify a specific name, say `super_speech.mp4` for the download, then do
  ```bash
  curl -Lo super_speech.mp4 -C - "url"
  ```
