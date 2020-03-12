dir=$(cd $(dirname $0) && pwd)

# bash判定のために必要
. ./.functions

if bash_shell_used; then
  ln -siv $dir/.profile ~/.bash_profile
  ln -siv $dir/.rc ~/.bashrc
else
  ln -siv $dir/.profile ~/.zprofile
  ln -siv $dir/.rc ~/.zshrc
fi

ln -siv $dir/.aliases ~/.aliases
ln -siv $dir/.vimrc ~/.vimrc
ln -siv $dir/.vim/ ~/.vim
ln -siv $dir/.screenrc ~/.screenrc
ln -siv $dir/.gitconfig ~/.gitconfig
ln -siv $dir/.gitignore_global ~/.gitignore_global
ln -siv $dir/.functions ~/.functions
ln -siv $dir/.hushlogin ~/.hushlogin
