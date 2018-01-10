# .bashrc

export TERM="xterm-256color"

source ~/.bash_git

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


####
# Bash Prompt
####
RED="\[\e[31m\]"
GRE="\[\e[32m\]"
YEL="\[\e[33m\]"
BLU="\[\e[34m\]"
PUR="\[\e[35m\]"
CYA="\[\e[36m\]"
WHI="\[\e[37m\]"
NUL="\[\e[0m\]"

# Show non-zero exit-code as a red "E:{code}"
EXIT="FOO=\$?; [ ! \$FOO = 0 ] && echo -ne \"${RED}E:\$FOO${NUL}\""
export PS1="${GRE}\u ${CYA}\t${YEL}\$(__git_ps1 \" (%s)\") ${BLU}\h ${PUR}\w${NUL} \`$EXIT\`\n $  "
export PS1="\[\033[44m\]\[\033[1;37m\] LOCAL \[\033[m\] $PS1"

# Automatically attach to a tmux session
if [ -z ${TMUX+x} ]; then tmux attach; fi;
