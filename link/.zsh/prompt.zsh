# my zsh prompt

# dont need promptinit, have my own
#autoload -U promptinit && promptinit

setopt prompt_subst #turn on command substitution in the prompt

## indicate if last command exited with 0 or failed
local exit_status="%(?,%{$fg[green]%}✓%{$reset_color%},%{$fg[red]%}✘%{$reset_color%})"


## if username == root the indicate warning color


PROMPT='
${exit_status} %{$fg[blue]%}%n%{$reset_color%} at %{$fg[blue]%}%m%{$reset_color%} in %{$fg[green]%}%~%{$reset_color%}
> %{$reset_color%}'




## look at this later:
# http://seanmmcdaniel.com/2011/09/zsh-on-os-x/

# colors?
#http://crunchbang.org/forums/viewtopic.php?pid=32739%23p32739

## https://github.com/slashbeast/things/blob/master/configs/DOTzshrc