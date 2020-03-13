. ~/.dotfiles/.functions

use_dotfiles_shell .aliases
use_dotfiles_shell .functions.local
use_dotfiles_shell .profile.local
use_dotfiles_shell .aliases.local

# bash only
if bash_shell_used; then
        use_shell ~/.bashrc
fi
