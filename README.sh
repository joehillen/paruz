#!/bin/bash
BLOCK='```'

cat <<EOF >README.md
# [paruz](https://github.com/joehillen/paruz)

A fzf terminal UI for \`paru\` (or \`pacman\`, if \`paru\` is not installed).

# Usage

${BLOCK}text
$(./paruz -h 2>&1)
${BLOCK}

# Requirements

- [fzf](https://github.com/junegunn/fzf)
- bash > 4.3 (released 2009)

# Installation

## Arch Linux

${BLOCK}
paru -S paruz
${BLOCK}

## Direct Download

${BLOCK}sh
wget -O ~/.bin/paruz https://raw.githubusercontent.com/joehillen/paruz/master/paruz
chmod +x ~/.bin/paruz
${BLOCK}

## From Source

${BLOCK}sh
git clone https://github.com/joehillen/paruz.git
cd paruz
sudo make install # /usr/local/bin/paruz
${BLOCK}
EOF
