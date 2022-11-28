## `tr` can be used to
- **replace** characters
- **delete** characters
  ```sh
  $ printf "abc\n"
  abc
  $ printf "abc\n" | tr -d "\n"
  abc$ printf "\n" | tr -d "\n"
  $ printf "\n" | tr "\n" "a"
  a$ printf "\n" | tr "\n" "\r"
  
  $ 
  ```
  Another example: (a shell script named `**pwd-to-xclip**`)
  <pre style="margin-bottom: 0; border-bottom:none; padding-bottom:0.8em;">~/.useful-scripts/pwd-to-xclip</pre>
  <pre style="margin-top: 0; border-top-style:dashed; padding-top: 0.8em;">
  pwd | tr -d "\n" | xclip -se c
  </pre>
- **substitute** characters
  ```sh
  $ echo "xyzwxyz" | tr -s 'xyz' 'ab'
  abwab
  $ echo "xyzwxyz" | tr -s 'xyz' 'a'
  awa
  $ echo "xyzwxyz" | tr -s 'xyz' 'abcd'
  abcwabc
  $ echo "xyzwxyz" | tr 'xyz' 'abcd'
  abcwabc
  $ echo "xyzwxyz" | tr 'xyz' 'ab'
  abbwabb
  $ echo "xyzwxyz" | tr 'xyz' 'a'
  aaawaaa
  ```


## Use Cases
1. Count the number of columns in a CSV (or TSV) file.
   (The example files `oneliner.tsv` and `twoliners.tsv` are in the current dir.)
   ```sh
   ~/.../linux/commands/tr $ cat oneliner.tsv
   name    age     job     email~/.../linux/commands/tr $ cat twoliners.tsv
   name    age     job     email
   Kem     1       photo bomber    kem@gmail.com
   ~/.../linux/commands/tr $ cat oneliner.tsv | sed 's/[^\t]//g' | tr "\n" "$" | tr "\t" "&" && echo
   &&&
   ~/.../linux/commands/tr $ head -1 twoliners.tsv | sed 's/[^\t]//g' | tr "\n" "$" | tr "\t" "&" && echo
   &&&$
   ```
     
   **Rmk.** A few explanations to the above might come in handy:
   - The `sed` command above simply replaces everything which is not a tab
     by empty string; the `tr` commands serve to make tab and newline visible
     (by `'&'` and `'$'`, resp.); finally, the `&& echo` at the end is there
     to print a newline to stdout to make everything looks prettier.
   - `oneliner.tsv` is a oneliner file **without** eol (end of line) whereas
     both lines in `twoliners.tsv` contain eol.  
     That is why there is no dollar sign in the stdout for `oneliner.tsv` above.
   - Files with no eol like `oneliner.tsv` are normally created by programs, e.g.
     ```python
     with open("oneliner.tsv", "w") as f:
         f.write("\t".join(L))
     ```
       
     To deliberately create such a file using `vim`, one could refer to
     <https://stackoverflow.com/questions/1050640/how-to-stop-vim-from-adding-a-newline-at-end-of-file>
     or <https://github.com/phunc20/vim-man/tree/master/eol>
