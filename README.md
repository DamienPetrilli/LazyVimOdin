# LazyVim Odin
LazyVim setup for Odin based on [LazyVim Starter](https://github.com/LazyVim/starter). For more infos on how to install dependencies on Windows / Linux or documentation, please refer to [LazyVim](http://www.lazyvim.org)

## Requirements
In order for everything to work, you need to clone and compile:
- [DanielGavin/ols](https://github.com/DanielGavin/ols) into `~/ols` (or change the path in `lua/plugins/odin.lua`)

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

## Common Neovim keybindings
- `Ctrl-/`: Show / hide the terminal
- `Ctrl-w`: Navigate between windows / split Windows
- `space-c`:activate the code help
- `` space-` ``: Switch between buffer. (or previous `[b` next `]b`)

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
