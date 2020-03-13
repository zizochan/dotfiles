dir=$(cd $(dirname $0) && pwd)

# bash判定のために必要
. $dir/.dotfiles/.functions

if bash_shell_used; then
  ln -siv $dir/.profile ~/.bash_profile
  ln -siv $dir/.bashrc ~/.bashrc
else
  ln -siv $dir/.profile ~/.zprofile
  ln -siv $dir/.zshrc ~/.zshrc
fi

ln -siv $dir/.dotfiles ~/.dotfiles
ln -siv $dir/.vimrc ~/.vimrc
ln -siv $dir/.vim/ ~/.vim
ln -siv $dir/.screenrc ~/.screenrc
ln -siv $dir/.gitconfig ~/.gitconfig
ln -siv $dir/.gitignore_global ~/.gitignore_global
ln -siv $dir/.hushlogin ~/.hushlogin
