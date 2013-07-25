

## source .profile
if [ -f ~/.profile ]; then
   source ~/.profile
fi


# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history


# autoload prompt
autoload -U promptinit
promptinit

#http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#my-right-prompt-battery-capacity
#http://peepcode.com/blog/2012/my-command-line-prompt#status



