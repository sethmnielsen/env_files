# My take on the pygmalion theme

prompt_setup_pygmalion(){
  DGREEN=$'\e[33;38;5;65m'
  ssh_prompt=""
  if [[ -n $SSH_CONNECTION ]]; then
    ssh_prompt="%{$DGREEN%}%m%{$reset_color%} "
  fi

  venvinfo=""
  if [[ -n $VIRTUAL_ENV ]]; then
    venvinfo="%{$fg[magenta]%}$(virtualenv_prompt_info)%{$reset_color%} "
  fi

  base_prompt='%{$fg[yellow]%}%2~%{$reset_color%}'
  #post_prompt='%{$fg[red]%} |%{$reset_color%}%{$fg[cyan]%} ➜%{$reset_color%} '
  post_prompt='%{$fg[red]%} |%{$reset_color%}'
  arrow='%(?:%{$fg_bold[cyan]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}'

  precmd_functions+=(prompt_pygmalion_precmd)

  ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}:%{$reset_color%}%{$fg[blue]%}(%{$fg[cyan]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg_bold[magenta]%}✗"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
}

prompt_pygmalion_precmd(){
  local gitinfo=$(git_prompt_info)
  PROMPT="$venvinfo$ssh_prompt$base_prompt$gitinfo$post_prompt $arrow "
}

prompt_setup_pygmalion


