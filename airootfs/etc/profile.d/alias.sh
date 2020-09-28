#!/bin/bash
alias ls='ls --color=auto'
alias l='ls  -lhskF  --color=auto --group-directories-first --time-style long-iso'
alias ll='ls -lhskFA --color=auto --group-directories-first --time-style long-iso'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ff='find / -name'
alias f='find . -name'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ip='ip -c'
alias pactree='pactree --color'
alias vdir='vdir --color=auto'
alias watch='watch --color'
alias sudo='sudo '
alias cp='cp -vi'
alias mv='mv -vi'
alias mkdir='mkdir -pv'

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
