## Example
Below is an example usage of the `base64` command
1. Download any image from the Internet (or use any image on your computer), e.g.
   ```bash
   $ wget https://avatars.githubusercontent.com/u/140882657?v=4 -O chuyphun.png
   ```
1. To encode this image in base 64 and print that to stdout,
   ```bash
   $ base64 chuyphun.png
   iVBORw0KGgoAAAANSUhEUgAAAQkAAAEJCAYAAACHaNJkAACAAElEQVR4nOz9B5icx30miL9V9aXO
   ...
   1alM3bQnfK5Sriy5DmGdR3g/m81qi8J1XUxMTOj8iI0bN76dn7qOOhbw/wcAAP///wRdhKoVPR4A
   AAAASUVORK5CYII=
   ```
    - Note that it seems that all PNG base64 encodings bear **the same 25 first
      characters**: `iVBORw0KGgoAAAANSUhEUgAAA`
1. `base64` can also be used to decode by specifying the `-d` option.
   The input needs to be a file while the default output is still to stdout.
   So, for example, we could make a round tour:
   ```bash
   $ base64 -d <(base64 chuyphun.png) > another_chuyphun.png
   ```
