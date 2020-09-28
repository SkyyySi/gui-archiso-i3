#!/usr/bin/env zsh

### Some options that may be needed by some themes/plugins ###
autoload -Uz colors && colors
setopt prompt_subst

### User scripts directory ###
if [[ ! -d "$ZSH" ]]; then
	mkdir -p $HOME/.zsh/
	ZSH="$HOME/.zsh"
fi

### Load user librarys ###
for l in $ZSH/lib/*.zsh; do
	if [[ -e "$l" ]]; then
		source $l
	fi
done && unset l

### Load system librarys ###
for l in /usr/share/zsh/lib/*.zsh; do
	if [[ -e "$l" ]]; then
		source $l
	fi
done && unset l

### Load plugins ###
for p in $plugins; do
	if [[ -e "$ZSH/plugins/$p.zsh" ]];then
		source "$ZSH/plugins/$p.zsh";
	elif [[ -e "$ZSH/plugins/$p/$p.zsh" ]];then
		source "$ZSH/plugins/$p/$p.zsh";
	elif [[ -e "/usr/share/zsh/plugins/$p.zsh" ]];then
		source "/usr/share/zsh/plugins/$p.zsh";
	elif [[ -e "/usr/share/zsh/plugins/$p/$p.zsh" ]];then
		source "/usr/share/zsh/plugins/$p/$p.zsh";
	elif [[ -e "$ZSH/plugins/$p.plugin.zsh" ]];then
		source "$ZSH/plugins/$p.plugin.zsh";
	elif [[ -e "$ZSH/plugins/$p/$p.plugin.zsh" ]];then
		source "$ZSH/plugins/$p/$p.plugin.zsh";
	elif [[ -e "/usr/share/zsh/plugins/$p.plugin.zsh" ]];then
		source "/usr/share/zsh/plugins/$p.plugin.zsh";
	elif [[ -e "/usr/share/zsh/plugins/$p/$p.plugin.zsh" ]];then
		source "/usr/share/zsh/plugins/$p/$p.plugin.zsh";
	fi
done && unset p

### Load the theme ###
if [[ -e "$ZSH/themes/$ZSH_THEME.zsh-theme" ]]; then
	source "$ZSH/themes/$ZSH_THEME.zsh-theme";
elif [[ -e "$ZSH/themes/$ZSH_THEME/$ZSH_THEME.zsh-theme" ]]; then
	source "$ZSH/themes/$ZSH_THEME/$ZSH_THEME.zsh-theme";
elif [[ -e "/usr/share/zsh/themes/$ZSH_THEME.zsh-theme" ]]; then
	source "/usr/share/zsh/themes/$ZSH_THEME.zsh-theme";
elif [[ -e "/usr/share/zsh/themes/$ZSH_THEME/$ZSH_THEME.zsh-theme" ]]; then
	source "/usr/share/zsh/themes/$ZSH_THEME/$ZSH_THEME.zsh-theme";
elif [[ -e "/usr/share/zsh-theme-powerlevel10k/$ZSH_THEME.zsh-theme" ]]; then
	source "/usr/share/zsh-theme-powerlevel10k/$ZSH_THEME.zsh-theme";
fi
