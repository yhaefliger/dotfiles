#!/bin/bash

echo 'Linking files...'
echo '----------------'


### Removes existing dotfiles and link with gited files ###

# ZSHRC
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/files/.zshrc $HOME/.zshrc
rm -rf $HOME/.bash_aliases
ln -s $HOME/.dotfiles/files/.bash_aliases $HOME/.bash_aliases
rm -rf $HOME/.bash_commands
ln -s $HOME/.dotfiles/files/.bash_commands $HOME/.bash_commands
