#! /bin/bash

dir=$(cd $(dirname $0) && pwd)

ln -siv $dir/.bash_aliases ~/.bash_aliases
ln -siv $dir/.bashrc ~/.bashrc
ln -siv $dir/.bash_profile ~/.bash_profile
ln -siv $dir/.vimrc ~/.vimrc
ln -siv $dir/.vim/ ~/.vim
ln -siv $dir/.screenrc ~/.screenrc
ln -siv $dir/.gitconfig ~/.gitconfig
ln -siv $dir/.gitignore_global ~/.gitignore_global
ln -siv $dir/.functions ~/.functions
ln -siv $dir/.hushlogin ~/.hushlogin
