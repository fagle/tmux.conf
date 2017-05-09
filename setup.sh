#!/bin/bash
current_dir=$(pwd)
echo $current_dir
cd ~
dirname=.bashrc_backup_$(date "+%Y%m%d%H%M%S")
mkdir $dirname
cp .bashrc $dirname
cp .bash_profile $dirname
cp .tmux.conf $dirname
cp .vimrc $dirname
rm .bashrc .bash_profile .vimrc .tmux.conf
ln -s $current_dir/cygwin_bashrc .bashrc
ln -s $current_dir/cygwin_bash_profile .bash_profile
ln -s $current_dir/tmux.conf .tmux.conf
ln -s $current_dir/vimrc   .vimrc
echo install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo todo install autojump

echo done
