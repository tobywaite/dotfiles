########################
## Bash Configuration ##
########################

# general bash aliases
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

# setup virtualenv wrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
# alias mkvirtualenv so the prompt shows up colorized
VIRTUAL_ENV_NAME='`basename $VIRTUAL_ENV`'
alias mkvirtualenv="mkvirtualenv --prompt='\e[36;40m(\"$VIRTUAL_ENV_NAME\") ' --no-site-packages"

# echonest API key
export ECHO_NEST_API_KEY="TH6VY4CKLAINW8KCO"

# android dev tools
export PATH=${PATH}:/Users/toby/code/android/adt-bundle-mac-x86_64/sdk/tools:/Users/toby/code/android/adt-bundle-mac-x86_64/sdk/platform-tools
