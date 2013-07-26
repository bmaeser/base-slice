# History
#---------------------------------

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt append_history # append history file, instead of overwriting
setopt inc_append_history # append to histfile after execution, not after exiting shell
setopt hist_ignore_dups # ignore duplication command history list
setopt extended_history # save time of history entry
setopt hist_expire_dups_first # delete duplicates first if histsize is reached
setopt hist_ignore_space #dont save commands that star with a space
setopt hist_verify #verify befor RETURN on substitutions
setopt share_history # share command history with other running shells