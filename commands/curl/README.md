

### How to download file from the Internet to somewhere other than <code>pwd</code>?
```sh
curl -fLo <local_dir> --create-dirs <file_URL>
```

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

## Why in Some Cases, `curl` Can but `wget` Cannot?
```bash
~/downloads ❯❯❯ wget "https://arxiv.org/pdf/1812.01892.pdf"
--2021-06-05 08:44:42--  https://arxiv.org/pdf/1812.01892.pdf
Loaded CA certificate '/etc/ssl/certs/ca-certificates.crt'
Resolving arxiv.org (arxiv.org)... 128.84.21.199
Connecting to arxiv.org (arxiv.org)|128.84.21.199|:443... connected.
HTTP request sent, awaiting response... 403 Forbidden
2021-06-05 08:44:43 ERROR 403: Forbidden.

~/downloads ❯❯❯ curl -O "https://arxiv.org/pdf/1812.01892.pdf"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  569k  100  569k    0     0   126k      0  0:00:04  0:00:04 --:--:--  143k
```


## Examples
- `vimplug`
  ```sh
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ```
