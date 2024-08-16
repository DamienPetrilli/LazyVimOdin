# LazyVim Odin
LazyVim setup for Odin based on [LazyVim Starter](https://github.com/LazyVim/starter)

## Requirements
In order for everything to work, you need to clone and compile:
- [DanielGavin/ols](https://github.com/DanielGavin/ols) into `~/ols` (or change the path in `lua/plugins/odin.lua`)

## Installation (macOS)
```bash
brew install neovim kitty lazygit ripgrep fd
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs brew install --cask
git clone https://github.com/DamienPetrilli/LazyVimOdin/ ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
## Changes
- Using a light theme in neovim.
- Using a larger symbol view and on the left in Trouble
