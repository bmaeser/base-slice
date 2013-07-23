##############################################################################
##
##  ~/.profile
##  zsh and bash read this
##
##  stuff to put in here: everything i want EVERYWHERE, in all shells,
##  e.g. aliases, rvm-stuff,  virtualenv(-wrapper)
##  source other files, that are not specifiv to a particular shell
##
##############################################################################

## source .env
if [ -f ~/.env ]; then
   source ~/.env
fi

## source .aliases
if [ -f ~/.aliases ]; then
   source ~/.aliases
fi

# colored grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# Detect which `ls` flavor is in use
#if ls --color > /dev/null 2>&1; then # GNU `ls`
#	colorflag="--color"
#else # OS X `ls`
#	colorflag="-G"
#fi

## better directoy listing:
alias sl='ls'
alias ll='ls -l'
alias la='ls -la'
alias lh='ls -lh'
alias lah='ls -lah'
# List only directories
alias lsd='ls -l | grep "^d"'


export LSCOLORS='Gxfxcxdxdxegedabagacad'

##  virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	export WORKON_HOME=$HOME/.venvs
	export PROJECT_HOME=$HOME/dev
	source /usr/local/bin/virtualenvwrapper.sh
fi



