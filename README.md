# My Dotfiles

My personal dotfiles. Targeted for any env with zsh/oh-my-zsh installed (windows wsl, mac os, linux).

## Stow

Easily manage dotfiles symlinks with [Stow](https://www.gnu.org/software/stow/manual/stow.html)

## Bash

### Prerequist

- If not already your current bash install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) + [oh my zsh](https://ohmyz.sh/#install)
- Install [fzf](https://github.com/junegunn/fzf#installation)

### Installation
```
stow bash
```

## Vim

### Prerequist

- [Vim plug](https://github.com/junegunn/vim-plug#installation)

### Installation
```
stow vim
```
Restart vim or reload .vimrc and launch `:PlugInstall` to install plugins.

## Tmux

### Installation
```
stow tmux
```
