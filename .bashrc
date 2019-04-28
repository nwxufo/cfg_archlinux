# Make sure that the terminal is set up properly for each shell

export TERM=linux

# System wide aliases and functions.

# System wide environment variables and startup programs should go into
# /etc/profile.  Personal environment variables and startup programs
# should go into ~/.bash_profile.  Personal aliases and functions should
# go into ~/.bashrc

# Provides a colored /bin/ls command.  Used in conjunction with code in
# /etc/profile.

alias ls='ls --color=auto'

# Provides prompt for non-login shells, specifically shells started
# in the X environment. [Review the LFS archive thread titled
# PS1 Environment Variable for a great case study behind this script
# addendum.]

NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
#if [[ $EUID == 0 ]] ; then
#  PS1="$RED\u [ $NORMAL\w$RED ]# $NORMAL"
#else
#  PS1="$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
#fi
PS1="$GREEN \$ $NORMAL"

#forbidden auto black screen.
setterm -blank 0

#milo add
HISTSIZE=90000
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}:${PWD}\007"'
if [[ $DISPLAY ]]; then
	# If not running interactively, do not do anything
	[[ $- != *i* ]] && return
	[[ -z "$TMUX" ]] && exec tmux
fi
# # for .tmux.conf: #T - tells to display current pane title, which can be set with some escape sequence. For doing this at each shell command,
[[ -n "$TMUX" ]] && PROMPT_COMMAND='echo -n -e "\e]2;${PWD/${HOME}/~}\e\\"'
