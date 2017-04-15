########################
## Bash Configuration ##
########################

# general bash aliases
LS_OPTS='-ah'
if [ $(uname) == "Linux" ]; then
  LS_OPTS="$LS_OTPS --color=always"
fi
alias ls="ls $LS_OPTS"

alias grep='grep --color' #colorize
alias ll='ls -alGF'

alias webserver='python -m SimpleHTTPServer'

# set bash to vim mode
set -o vi

# set prompt to look like: "user@host ~/path>" but with colors.
export PS1="\[\e[37;20m\]\u@\h \[\e[32;20m\]\w\[\e[34;20m\] > \[\e[0m\]"

echo "YO! WHY NO ZSH? Bash should be considered deprecated because the dotfiles aren't maintained."
