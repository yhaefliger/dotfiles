export EDITOR=vim
export DOTFILES=$HOME/.dotfiles
export ANTIGEN_LOG=$HOME/antigen.log
export ZSH_DIR_COLOR=green

#ZSH_DISABLE_COMPFIX=true

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# antigen plugins and theme management
source $DOTFILES/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  git
  nvm
  sudo
  ng
  history
  composer
  colored-man-pages
  kube-ps1
  kubectl
  superbrothers/zsh-kubectl-prompt
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
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.config/composer/vendor/bin:/usr/local/go/bin:$GOPATH:$GOPATH/bin:$HOME/.local/bin"
#eval "$(direnv hook zsh)"

# Sdkman
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export TERM=xterm-256color

# Github copilot
#eval "$(github-copilot-cli alias -- "$0")"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export PATH="$PATH:/$HOME/test/emsdk:$HOME/test/emsdk/upstream/emscripten"
export EMSDK="$HOME/test/emsdk"
export EMSDK_NODE="$HOME/test/emsdk/node/18.20.3_64bit/bin/node"

#kube before
#PROMPT='$(kube_ps1)'$PROMPT
#kub right
#RPROMPT='$(kube_ps1)'
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
