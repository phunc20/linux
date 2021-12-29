## There are ways by which you can use vim to edit shell commands
As far as I know there exist at least three ways
01. **`Ctrl-x-e`**: Typing this key combination at the command prompt, the terminal will open your system's default editor (one can assign one's own favorite editor via the command `export EDITOR=nvim`). Upon finishing editing and upon saving and exiting the editor, the terminal will execute the command(s) in the editor
02. **`fc`**: Short for _**f**ix **c**ommand_. This is pretty much identical to `Ctrl-x-e`
03. Add a line to **`~/.bashrc`**:





