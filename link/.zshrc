# .zshrc
# Author: Bernhard Maeser



# source global .profile
#---------------------------------
if [ -f ~/.profile ]; then
   source ~/.profile
fi


# Colors
#---------------------------------
# lets you use color names instead of 
# load colors
autoload -U colors && colors


# load everything in ./zsh/ that ends in zsh
for config_file (~/.zsh/*.zsh); do
  source $config_file
done


#http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#my-right-prompt-battery-capacity
#http://peepcode.com/blog/2012/my-command-line-prompt#status



## todo: save iterm2 prefs
# ~/Library/Preferences/com.googlecode.iterm2.plist

## dotpy: unterschied zwischen deeplinking und normalem linken!