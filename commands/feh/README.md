## Usage
- Find corrupted images
  ```bash
  ~/.../linux/commands/feh $ feh -ur downloaded_captchas/
  downloaded_captchas/2025-01-10T22:36:08.054534_qk2jfz.jpg
  downloaded_captchas/2025-01-11T16:05:56.267085_5pjxvg.jpg
  ~/.../linux/commands/feh $ ll downloaded_captchas/
  total 4.0K
  -rw-r--r-- 1 phunc20 wheel    0 Jan 11 16:05 2025-01-11T16:05:56.267085_5pjxvg.jpg
  -rw-r--r-- 1 phunc20 wheel    0 Jan 13 15:42 2025-01-10T22:36:08.054534_qk2jfz.jpg
  -rw-r--r-- 1 phunc20 wheel 2.1K Jan 13 15:46 2024-12-30T14:51:48.961524_s6nx96.jpg
  ```
- Find corrupted images and delete them (with confirmation)
  ```bash
  ~/.../linux/commands/feh $ feh -ur downloaded_captchas/ | xargs -p rm
  rm downloaded_captchas/2025-01-10T22:36:08.054534_qk2jfz.jpg downloaded_captchas/2025-01-11T16:05:56.267085_5pjxvg.jpg?...
  ```
