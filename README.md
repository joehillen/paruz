# [paruz](https://github.com/joehillen/paruz)

A fzf terminal UI for `paru` (or `pacman`, if `paru` is not installed).

VERSION: 1.0.0

# Usage

```text
Usage: paruz [OPTS]

A fzf terminal UI for paru or pacman.

sudo is invoked automatically, if needed.

Multiple packages can be selected.

The package manager can be changed with the environment variables: PARUZ

Keybindings:
  TAB                    Select
  SHIFT+TAB              Deselect
  CTRL+r                 Refresh package database (-Syy)

OPTS:
  -h, --help             Print this message

  All other options are passed to the package manager.
  Default: -S (install)

Examples:
  paruz -S --nocleanafter
  paruz -R
  PARUZ=yay paruz
```

# Requirements

- [fzf](https://github.com/junegunn/fzf)
- bash > 4.3 (released 2009)

# Installation

## Arch Linux

```
paru -S paruz
```

## Direct Download

```sh
wget -O ~/.bin/paruz https://raw.githubusercontent.com/joehillen/paruz/master/paruz
chmod +x ~/.bin/paruz
```

## From Source

```sh
git clone https://github.com/joehillen/paruz.git
cd paruz
sudo make install # /usr/local/bin/paruz
```
