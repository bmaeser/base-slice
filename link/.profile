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


##  ALIAS
###########################

# faster navigation:
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ~='cd ~'
alias -- -='cd -'

# pushd and popd
alias pu='pushd'
alias po='popd'

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

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# disk usage with human sizes and minimal depth
alias du1='du -h --max-depth=1'

alias fnd='find . -name'

# Mimic vim
alias :q='exit'
alias :qa='exit'

alias v='vim'


##  virtualenvwrapper
###########################

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	export WORKON_HOME=$HOME/.venvs
	export PROJECT_HOME=$HOME/dev
	source /usr/local/bin/virtualenvwrapper.sh
fi



##  OSX SLICE
##############################################################################

## TODO: MOVE THIS IN OSX SLICE !!!


##  ALIAS
###########################

alias m='mate .'
alias s='subl .'
alias o='open'
alias oo='open .'

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Flush DNS cache
alias flushdns="dscacheutil -flushcache"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

## local updates of brew and appstor
alias lupdate='brew update && brew upgrade'