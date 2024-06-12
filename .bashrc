export VISUAL="nvim"
export EDITOR="$VISUAL"
unset HISTFILE

test -f ~/.bash_aliases && . ~/.bash_aliases

eval "$(starship init bash)"
