export EDITOR=vim
export DOTFILES=$HOME/.dotfiles
export ANTIGEN_LOG=$HOME/antigen.log
export ZSH_DIR_COLOR=green

# antigen plugins and theme management
source $DOTFILES/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  git
  nvm
  sudo
  history
  composer
  colored-man-pages
  jessarcher/zsh-artisan
  yhaefliger/zsh-drupal
EOBUNDLES

# custom agnoster theme with customizable dir color bg and only 2 dirs printed
antigen theme $DOTFILES/yaha-zsh-theme --loc=yaha --no-local-clone
#antigen theme agnoster
antigen apply

# solarized dark dircolors
eval `dircolors $HOME/.dircolors`

# z - jump around
. $DOTFILES/z.sh

# fzf plugins
source $DOTFILES/key-bindings.zsh
source $DOTFILES/completion.zsh

source $HOME/.bash_aliases
source $HOME/.bash_commands
if [ -f $HOME/.bash_custom ]; then
  source $HOME/.bash_custom
fi

# Add local bins to PATH variable
export GOPATH="$HOME/gopath"
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.composer/vendor/bin:/usr/local/go/bin:$GOPATH:$GOPATH/bin:$HOME/.local/bin"
eval "$(direnv hook zsh)"

# Sdkman
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
