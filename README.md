# LazyVim Odin
LazyVim setup for Odin based on [LazyVim Starter](https://github.com/LazyVim/starter). For more infos on how to install dependencies on Windows / Linux or documentation, please refer to [LazyVim](http://www.lazyvim.org)

## Requirements
In order for everything to work, you need to clone and compile:
- [DanielGavin/ols](https://github.com/DanielGavin/ols) into `~/ols` (or change the path in `~/.config/nvim/lua/plugins/odin.lua`)
```bash
git clone https://github.com/DanielGavin/ols.git ~/ols
cd ~/ols && ./build.sh
```

## Installation (macOS)
```bash
brew install lua luarocks neovim kitty lazygit ripgrep fd ast-grep fish
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs brew install --cask
git clone https://github.com/DamienPetrilli/LazyVimOdin/ ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

## Changes
- Using a light theme in neovim.
- Using a larger symbol view and on the left in Trouble

## Common Neovim / vim keybindings
- `Ctrl-/`: Show / hide the terminal
- `Ctrl-w`: Navigate between windows / split Windows
- `space-c`:activate the code help
- `` space-` ``: Switch between buffer. (or previous `[b` next `]b`)
- `Ctrl-O`: Go back to previous position
- `Ctrl-I`: Go the next position
- `Ctrl+]`: Go to the definition of a symbol

## Common Neotree Keybindings
- `a`: Add a file or directory
- `d`: Delete a file or directory
- `r`: Rename a file or directory
- `c`: Copy a file or directory
- `m`: Move a file or directory
- `y`: Copy file name to system clipboard
- `Y`: Copy relative path to system clipboard
- `gy`: Copy absolute path to system clipboard
- `<Enter>` or `o`: Open file or expand directory
- `<C-v>`: Open file in vertical split
- `<C-x>`: Open file in horizontal split
- `<C-t>`: Open file in new tab
- `<C-f>`: Filter tree items
- `H`: Toggle hidden files
- `R`: Refresh the tree
- `W`: Collapse all directories
- `S`: Search in directory

Note: `<C->` represents the Ctrl key

## [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)

Features of todo-comments.nvim:

Highlighting: It highlights TODO comments with different colors based on the keyword.
Signs: It adds icons in the sign column (the margin you mentioned).
Search: It provides commands to search for TODO comments.
Navigation: It offers keybindings to jump between TODO comments.

Supported tags:
By default, it supports these keywords:

- TODO
- HACK
- WARN
- PERF
- NOTE
- TEST
- FIX (which includes FIXME, BUG, FIXIT, ISSUE)

You can customize these keywords, their colors, and icons in the configuration.
To use the plugin's features:

- `:TodoQuickFix:` Opens a quickfix list with all TODO comments
- `:TodoLocList:` Opens a location list with all TODO comments
- `:TodoTelescope:` Opens Telescope with all TODO comments (if you have Telescope installed)

You can also use keybindings to jump between TODO comments:

- `]t`: Jump to next todo comment
- `[t`: Jump to previous todo comment
