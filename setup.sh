#!/bin/bash
current_dir=$(pwd)
echo $current_dir
cd ~
dirname=.bashrc_backup_$(date "+%Y%m%d%H%M%S")
mkdir $dirname
mv .bashrc $dirname
mv .bash_profile $dirname
mv .tmux.conf $dirname
ln -s $current_dir/cygwin_bashrc .bashrc
ln -s $current_dir/cygwin_bash_profile .bash_profile
ln -s $current_dir/tmux.conf .tmux.conf
echo done
