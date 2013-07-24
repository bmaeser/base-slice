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



#export LSCOLORS='Gxfxcxdxdxegedabagacad'

##  virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	export WORKON_HOME=$HOME/.venvs
	export PROJECT_HOME=$HOME/dev
	source /usr/local/bin/virtualenvwrapper.sh
fi



