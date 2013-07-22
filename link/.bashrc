##############################################################################
##
##	MAIN BASH CONFIGFILE
##  --------------------
##
##  interactive non-login bash reads this
##  because iTerm/Terminal.app and other terminal-emulators
##  always open a login-shell, this file gets sourced by .bash_profile
##
##  stuff to put in here: anything that is spezific to bash, like bash-prompt 
##
##############################################################################



##  BASE SLICE
##############################################################################


## source .profile, because bash ignores it if ~/.bash_profile exists
if [ -f ~/.profile ]; then
   source ~/.profile
fi


## i want a beautiful prompt
#if [ -f ~/.bash_prompt ]; then
#   source ~/.bash_prompt
#fi


# Increase the maximum number of lines contained in the ~/.bash_history
# (default is 500)
export HISTFILESIZE=10000
# Increase the maximum number of commands to remember in ~/.bash_history
# (default is 500)
export HISTSIZE=10000
# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"



##  OSX SLICE
##############################################################################

## TODO: MOVE THIS IN OSX SLICE !!!

## brew installed bash-autocompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi