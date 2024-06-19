- <https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim>
```bash
sudo apt install vim-gtk3
```

## How to Check?
- From terminal: `vim --version | grep clipboard`
- From inside `vim`: `echo has("clipboard")`

