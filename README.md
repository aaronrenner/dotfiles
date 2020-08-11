Aaron Renner's dotfiles
===============

These are my laptop setup scripts and dotfiles.

## Using my dotfiles

These dotfiles are deployed with [rcm][rcm]. The easiest way to
get started with them is to create a `~/.rcrc` file and edit
the contents for your machine.

```
DOTFILES_DIRS="<path_to_this_repo>/dotfiles"
TAGS="spacemacs git tmux"
```

Once the `~/.rcrc` is in place, you can deploy the dotfiles
using the [`rcup`][rcup] command.


[rcm]: https://github.com/thoughtbot/rcm
[rcup]: https://thoughtbot.github.io/rcm/rcup.1.html
