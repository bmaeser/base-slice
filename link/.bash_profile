source ~/.profile
source ~/.bash_prompt



### this moves into osx-slilce later!

## brew installed bash-autocompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi