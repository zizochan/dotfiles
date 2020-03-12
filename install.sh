dir=$(cd $(dirname $0) && pwd)

ln -siv $dir/.profile ~/.zprofile
ln -siv $dir/.rc ~/.zshrc

ln -siv $dir/.aliases ~/.aliases
ln -siv $dir/.vimrc ~/.vimrc
ln -siv $dir/.vim/ ~/.vim
ln -siv $dir/.screenrc ~/.screenrc
ln -siv $dir/.gitconfig ~/.gitconfig
ln -siv $dir/.gitignore_global ~/.gitignore_global
ln -siv $dir/.functions ~/.functions
ln -siv $dir/.hushlogin ~/.hushlogin
