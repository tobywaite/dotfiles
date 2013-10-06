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
alias v='vim' # shortcut
alias ls='ls -GF' # Colorize and mark filetypes
alias ll='ls -alGF'

# set bash to vim mode
set -o vi

# set prompt to look like: "user@host ~/path>" but with colors.
export PS1="\[\e[37;40m\]\u@\h \[\e[32;40m\]\w\[\e[34;40m\]> \[\e[0m\]"


###################################
## Dev Environment Configuration ##
###################################

# Git aliases
alias git='hub' # github integration. This will fail gracefully (by not aliasing anything) if hub isn't installed
alias gs='git status'
alias gd='git diff'
alias gc='git commit -a'

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

# testify tab completion
testify_tab_file=$HOME/bin/testify_tab_completion.sh
if [ -f $testify_tab_file ];
then
    source $testify_tab_file ;
fi

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

# yelp specific config
if [ "$YELP_MAIN" ]; then
  # Move to the actual working directory I want to be in...
  cd ~/pg/yelp-main
fi

pg_environ=~/.pgconf-toby/environ.sh
if [ -f $pg_environ ]; then
  source $pg_environ;
fi

if [ "$YELP_IN_SANDBOX" ]; then
  export PS1="$PS1(sandbox)\$ "
fi

# Yelp Aliases
yelp_aliases=/nail/scripts/aliases.sh
if [ -f $yelp_aliases ];
then
    source $yelp_aliases;
fi
