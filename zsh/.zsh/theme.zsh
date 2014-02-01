# Allow prompt parameter expansion
setopt PROMPT_SUBST

# local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
# PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

# ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"



ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}:%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}●%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg[green]%}%2~$(git_custom_status) %{$fg_bold[blue]%}› %{$reset_color%}'
RPS1=''
