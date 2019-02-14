#!/bin/bash

# $1:windowsのユーザー名
if [ "$1" = "" ]
then
    echo "no argument"
fi

# ホーム配下をバックアップ
mkdir $HOME/_dotfilesbk
now=`date '+%Y%m%d%H%M%S'`
mkdir $HOME/_dotfilesbk/$now
rsync -a $HOME/ $HOME/_dotfilesbk/$now --exclude='dotfiles' --exclude='_dotfilesbk'

WINDOWS_HOME=/mnt/c/Users/$1


DOT_FILES=( \
.bash_logout \
.bashrc \
.config \
.tmux.conf \
.vimrc \
)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
