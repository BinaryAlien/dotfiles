export VISUAL="nvim"
export EDITOR="$VISUAL"
unset HISTFILE

PS1='\[\e[90m\]\t `[ "$?" -eq 0 ] && echo "\[\e[92m\]✓" || echo "\[\e[91m\]✗"` `[ \j -eq 0 ] && echo "\[\e[96m\]" || echo "\[\e[95m\]"`\W\[\e[0m\]\$ '

test -f ~/.bash_aliases && . ~/.bash_aliases
