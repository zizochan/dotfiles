dir=$(cd $(dirname $0) && pwd)

# bash判定のために必要
. $dir/.dotfiles/.functions

function create_homedir_symlink() {
  local basepath=$dir/$1
  if [ -z $basepath ]; then
    return
  fi

  # 第２引数で出力ファイル名変更可能
  local outname=$2
  if [ -z $outname ]; then
    local outname=$1
  fi

  local outpath=~/$outname
  if [ -e $outpath ]; then
    return
  fi

  ln -siv $basepath $outpath
}


# bash
if is_bash_shell; then
  create_homedir_symlink .profile .bash_profile
  create_homedir_symlink .bashrc

# zsh
else
  create_homedir_symlink .profile .zprofile
  create_homedir_symlink .zshrc
fi


# common
files=(.dotfiles .vimrc .screenrc .gitconfig .gitignore_global .hushlogin)
for file in ${files[@]}
do
  create_homedir_symlink $file
done
create_homedir_symlink .vim/ .vim

echo "installed!"

