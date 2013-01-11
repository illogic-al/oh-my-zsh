# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png

setopt prompt_subst
autoload colors
colors

#use extended color pallete if available
if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
else
    turquoise="$fg[cyan]"
    orange="$fg[yellow]"
    purple="$fg[magenta]"
    hotpink="$fg[red]"
    limegreen="$fg[green]"
fi

local return_code="%(?..%{$fg[red]%}FAIL ↵%{$reset_color%})"

local user_host='%{$reset_color%}%{$purple%}%n%{$reset_color%}@%{$orange%}%m%{$reset_color%}'
local current_dir='%{$reset_color%}%{$limegreen%} %~ %{$reset_color%}'
local rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
local git_branch='%{$reset_color%}$(git_prompt_info)%{$reset_color%}'
local command_exe='%{%B%F{cyan}%}%!%{%f%k%b%}'
local smiley="%(?,%{$fg[green]%}:%)%{$reset_color%},%{$fg[red]%}:(%{$reset_color%})"

PROMPT="%{$terminfo[bold]$fg[blue]%}┌─[${user_host}%{$terminfo[bold]$fg[blue]%}] - [${current_dir}%{$terminfo[bold]$fg[blue]%}] ${git_branch}
%{$terminfo[bold]$fg[blue]%}└─[${command_exe}%{$terminfo[bold]$fg[blue]%}] - [%{$turquoise%}$%{$terminfo[bold]$fg[blue]%}] %{$reset_color%}${smiley} "
RPS1="${return_code} %{$terminfo[bold]$fg[blue]%}[%{$fg[yellow]%}%*%{$terminfo[bold]$fg[blue]%}]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$terminfo[bold]$fg[blue]%}[%{$turquoise%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$terminfo[bold]$fg[blue]%}] %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$hotpink%}⚡%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$turquoise%}"

