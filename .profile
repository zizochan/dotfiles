if [ -f ~/.profile_local ]; then
    . ~/.profile_local
fi
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
if [ -f ~/.aliases_local ]; then
    . ~/.aliases_local
fi
if [ -f ~/.functions ]; then
    . ~/.functions
fi
if [ -f ~/.functions_local ]; then
    . ~/.functions_local
fi
