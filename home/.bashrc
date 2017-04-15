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


###################################
## Dev Environment Configuration ##
###################################

# Git aliases
alias git='hub' # github integration. This will fail gracefully (by not aliasing anything) if hub isn't installed
alias gs='git status'
alias gd='git diff'

# setup virtualenv
export PATH=$HOME/.local/bin:$PATH
export WORKON_HOME=$HOME/.virtualenvs
virtualenv_loc=/usr/local/bin/virtualenvwrapper.sh
local_virtualenv_loc=$HOME/.local/bin/virtualenvwrapper.sh
if [ -f $local_virtualenv_loc ]; then
  virtualenv_loc=local_virtualenv_loc
fi
if [ -f $virtualenv_loc ]; then
  source $virtualenv_loc;
fi

# alias mkvirtualenv so the prompt shows up colorized
VIRTUAL_ENV_NAME='`basename $VIRTUAL_ENV`'
alias mkvirtualenv="mkvirtualenv --prompt='\e[36;40m(\"$VIRTUAL_ENV_NAME\") ' --no-site-packages"

# Fix it when my ssh agent gets confused in tmux
ssh-reagent () {
    for agent in /tmp/ssh-*/agent.*; do
         export SSH_AUTH_SOCK=$agent
         if ssh-add -l 2>&1 > /dev/null; then
             echo Found working SSH Agent:
             ssh-add -l
             return
         fi
     done
     echo Cannot find ssh agent - maybe you should reconnect and forward it?
}
