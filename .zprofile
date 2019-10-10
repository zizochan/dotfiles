# .zsh_profile
# Get the aliases and functions
if [ -f ~/.zsh_profile_local ]; then
    . ~/.zsh_profile_local
fi
if [ -f ~/.zshrc_local ]; then
    . ~/.zshrc_local
fi
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
if [ -f ~/.zsh_aliases_local ]; then
    . ~/.zsh_aliases_local
fi
if [ -f ~/.functions ]; then
    . ~/.functions
fi
if [ -f ~/.functions_local ]; then
    . ~/.functions_local
fi
