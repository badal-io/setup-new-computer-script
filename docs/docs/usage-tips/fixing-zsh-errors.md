# Fix ZSH Errors

If you are using ZSH as your shell (default in newer Mac OS versions) you may get this error after running the setup script:

> zsh compinit: insecure directories, run compaudit for list.
> Ignore insecure directories and continue [y] or abort compinit [n]?

You can fix this by running the following command in your terminal:
```sh
compaudit | xargs chmod g-w
```
