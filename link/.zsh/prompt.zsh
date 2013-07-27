# my zsh prompt

# dont need promptinit, have my own
#autoload -U promptinit && promptinit

setopt prompt_subst #turn on command substitution in the prompt

## indicate if last command exited with 0 or failed
local prmt_exit_status="%(?,%{$fg[green]%}✓%{$reset_color%},%{$fg[red]%}✘%{$reset_color%})"


## tell me if this a ssh-session
if [[ -z "$SSH_CLIENT" ]]; then
    prmpt_ssh=""
else
    prmpt_ssh="%{$fg[red]%}(ssh) %{$reset_color%}"
fi

## if username == root the indicate warning color
if [ $UID -eq 0 ]; then
    prmpt_user="%{$fg[red]%}%n%{$reset_color%}"
else
    prmpt_user="%{$fg[cyan]%}%n%{$reset_color%}"
fi


PROMPT='
${prmt_exit_status} ${prmpt_ssh}${prmpt_user} at %{$fg[cyan]%}%m%{$reset_color%} in %{$fg[green]%}%~%{$reset_color%}
> %{$reset_color%}'

#dummy for now
RPROMPT='(blog.bmaeser.io) master x'


## look at this later:
# http://seanmmcdaniel.com/2011/09/zsh-on-os-x/

# colors?
#http://crunchbang.org/forums/viewtopic.php?pid=32739%23p32739

## https://github.com/slashbeast/things/blob/master/configs/DOTzshrc