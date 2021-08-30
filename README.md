# OPTIONS

All arguments passed to `paruz` are passed to the `paru` command after making
a selection.

Default is `-S`:

```
$ paruz -S --nocleanafter
$ paruz -R
```

# KEYBINDINGS

- `Tab` Select
- `Shift+Tab` Deselect
- `Ctrl+a` Select All

# ENVIRONMENT VARIABLES

- Use the `PARUZ` environment variable to change the package management
  command from `paru` to something else, such as `pacman` or `yay`:
  ```
  $ env PARUZ="sudo pacman" paruz
  $ env PARUZ=yay paruz
  ```
- Use `FZF_DEFAULT_OPTS` to change the options for the `fzf` command:
  ```
  $ env FZF_DEFAULT_OPTS="--extended --cycle" paruz
  ```
