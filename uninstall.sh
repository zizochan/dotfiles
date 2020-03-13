files=(.zprofile .zshrc .bash_profile .bashrc .dotfiles .vimrc .vim .screenrc .gitconfig .gitignore_global .hushlogin)

function remove_homedir_symlink() {
  local filepath=~/$1
  if [ -z $filepath ]; then
    return
  fi

  if [ ! -L $filepath ]; then
    return
  fi

  rm -f $filepath
}

for file in ${files[@]}
do
  remove_homedir_symlink $file
done

echo "uninstalled!"
