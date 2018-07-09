#!/bin/bash

DOT_FILES=( \
.bash_history \
.bash_logout \
.bashrc \
.config \
.profile \
.tmux.conf \
.vimrc \
)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
