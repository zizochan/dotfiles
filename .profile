. ~/.functions
. ~/.aliases

if [ -f ~/.functions_local ]; then
    . ~/.functions_local
fi
if [ -f ~/.profile_local ]; then
    . ~/.profile_local
fi
if [ -f ~/.aliases_local ]; then
    . ~/.aliases_local
fi

# bash only
if bash_shell_used; then
        . ~/.bashrc
fi
