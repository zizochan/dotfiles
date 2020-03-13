# read common file
if [ -f $dotfiles_dir/.rc.common ]; then
    . $dotfiles_dir/.rc.common
fi

# prompt
export PS1="\h:\W "
