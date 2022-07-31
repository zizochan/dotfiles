. ~/.dotfiles/.functions

read_dotfiles_source .aliases
read_dotfiles_source .functions.local
read_dotfiles_source .profile.local
read_dotfiles_source .aliases.local

# bash only
if is_bash_shell; then
  read_source ~/.bashrc
fi
