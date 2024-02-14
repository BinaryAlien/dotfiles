export VISUAL="nvim"
export EDITOR="$VISUAL"
unset HISTFILE

PS1='\[\e[90m\]\t `[ "$?" -eq 0 ] && echo "\[\e[92m\]✓" || echo "\[\e[91m\]✗"` \[\e[96m\]$SHLVL:\j\[\e[0m\] \[\e[95m\]\w\[\e[0m\]\$ '

test -f ~/.bash_aliases && . ~/.bash_aliases
