# Dotfiles

My personal dotfiles. Targeted for any env with zsh/oh-my-zsh installed (windows wsl, mac os, linux).

## General installation

Clone this repository into a `$HOME/.dotfiles` folder.
```
git clone https://github.com/yhaefliger/dotfiles.git $HOME/.dotfiles
```
I recommand you to install [Stow](https://www.gnu.org/software/stow/manual/stow.html) for symlink management of your dotfiles!

## Bash
![Bash theme preview](https://yhaefliger.github.io/dotfiles/bash.png)

### Prerequist

- If not already your current bash install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) + [oh my zsh](https://ohmyz.sh/#install)
- Install [fzf](https://github.com/junegunn/fzf#installation)

### Installation
```
stow bash
```

## Vim
![Vim theme preview](https://yhaefliger.github.io/dotfiles/vim.png)
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
