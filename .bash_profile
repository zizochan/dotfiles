# .bash_profile
# Get the aliases and functions
if [ -f ~/.bash_profile_local ]; then
    . ~/.bash_profile_local
fi
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.bash_aliases_local ]; then
    . ~/.bash_aliases_local
fi
if [ -f ~/.functions ]; then
    . ~/.functions
fi
if [ -f ~/.functions_local ]; then
    . ~/.functions_local
fi
