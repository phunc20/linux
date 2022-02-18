`IFS` stands for "internal field separator". It is used by the shell to determine how to do word splitting,
i.e. how to recognize word boundaries.

The default value for `IFS` consists of whitespace characters. To be precise

- space
- tab
- newline

Each of these three characters can be a word boundary.

> To verify that the default `IFS` is indeed `"\s\t\n"`, one can
> ```
> $ vim <(echo "a${IFS}z")
> ```
> Once inside `vim`, type `:set list` and you'll see it.


## Usecase
1. Filenames may contain spaces.
    - For many Linux users, this is bad practice. But why? Well, one particular bad situation is when you try
      to loop through an array of such filenames, your computer might encounter difficulties knowing where to
      split the files:
      ```bash
      ~/.../commands/env/IFS $ ls *.txt
      causal reasoning.txt
      evidential reasoning.txt
      ~/.../commands/env/IFS $ bash naive.sh *.txt
      causal
      reasoning.txt
      evidential
      reasoning.txt
      ```
