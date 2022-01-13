#!/bin/bash

echo 'Installing :)'
echo '-------------'


# Removes existing dotfiles and link with gited files
rm -rf $HOM/.zshrc
ln -s $HOME/.dotfiles/files/.zshrc $HOME/.zshrc
