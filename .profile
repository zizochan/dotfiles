dotfiles_dir=~/.dotfiles

. $dotfiles_dir/.functions
. $dotfiles_dir/.aliases

if [ -f $dotfiles_dir/.functions.local ]; then
    . $dotfiles_dir/.functions.local
fi
if [ -f $dotfiles_dir/.profile.local ]; then
    . $dotfiles_dir/.profile.local
fi
if [ -f $dotfiles_dir/.aliases.local ]; then
    . $dotfiles_dir/.aliases.local
fi

# bash only
if bash_shell_used; then
        . ~/.bashrc
fi
