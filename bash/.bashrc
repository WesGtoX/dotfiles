#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add git branch if its present to PS1
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

alias ls='ls --color=auto'
PS1='[\u@\h \W]\[\033[36m\]$(parse_git_branch)\[\033[00m\]$ '


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
