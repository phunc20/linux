## There are ways by which you can use vim to edit shell commands
As far as I know there exist at least three ways
01. **`Ctrl-x-e`**: Typing this key combination at the command prompt, the terminal will open your system's default editor (which in my case is `vim`). Upon finishing editing and upon saving and exiting the editor, the terminal will automatically execute the command you've edited
02. **`fc`**: Short for _**f**ix **c**ommand_. Typing this command will open the system's editor with the most recent command you've executed already in the editor.
03. Add a line to **`~/.bashrc`**:





