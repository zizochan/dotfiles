# dotfiles

# Install

## create sym links
./install.sh

## vim install

### neovim
brew install neovim

### dein vim
```
mkdir -p ~/.cache/dein
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm -f installer.sh
```

## add giftconfig
vim .gitconfig.local

> [user]  
>   name = "Your Name"  
>   email = you@example.com

# Uninstall

## remove sym links
./uninstall.sh


# Other

## optional files
These files are not committed to git.

* .dotfiles/.aliases.local
* .dotfiles/.functions.local
* .dotfiles/.profile.local
* .dotfiles/.rc.local



