# Dotfiles

My personal dotfiles. Targeted for any env with zsh/oh-my-zsh installed (windows wsl, mac os, linux).

## General installation

Clone this repository into a `$HOME/.dotfiles` folder.
```
git clone https://github.com/yhaefliger/dotfiles.git $HOME/.dotfiles
```
I recommand you to install [Stow](https://www.gnu.org/software/stow/manual/stow.html) for symlink management of your dotfiles!

## Bash

Edited agnoster theme to easily change dir bg color (`ZSH_DIR_COLOR` env variable) and show max 2 directories.
Basic plugins (git / composer / nvm / sudo / history) and framework specifics for framework I use daily (artisan for Laravel and drush for Drupal).

![Bash theme preview](https://yhaefliger.github.io/dotfiles/bash.png)

### Prerequist

- If not already your current bash install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) + [oh my zsh](https://ohmyz.sh/#install)
- Install [fzf](https://github.com/junegunn/fzf#installation)

### Installation
```
stow bash
```

## Vim

- Plugins managed with Vim plug.
- Vim-sensible (better defaults), polygot (git support) and nerdtree plugins.
- OneDark themed with [lightline](https://github.com/itchyny/lightline.vim) integration.
- `<Ctrl>+j/k` to move lines up/down, `F4` to highlight current line. 
- Leader remapped to `,` (read [painless vim](https://leanpub.com/painless_vim))

![Vim theme preview](https://yhaefliger.github.io/dotfiles/vim.png)
### Prerequist

- [Vim plug](https://github.com/junegunn/vim-plug#installation)

### Installation
```
stow vim
```
Restart vim or reload .vimrc and launch `:PlugInstall` to install plugins.

## Tmux

- changed leader key from `<ctrl>+b` to `<ctrl>+a`
- additional bindings `-` for horizontal split and `+` for vertical split
- vim style navigation and resize `h/j/k/l` to navigate and `H/J/K/L` to resize panes
  
### Installation
```
stow tmux
```
