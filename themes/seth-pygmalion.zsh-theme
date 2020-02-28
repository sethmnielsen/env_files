# Yay! High voltage and arrows!

function _virtualenv_prompt_info {
    if [[ -n "$(whence virtualenv_prompt_info)" ]]; then
        if [ -n "$(whence pyenv_prompt_info)" ]; then
            if [ "$1" = "inline" ]; then
                ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX=%{$fg[blue]%}"::%{$fg[red]%}"
                ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX=""
                virtualenv_prompt_info
            fi
            [ "$(pyenv_prompt_info)" = "${PYENV_PROMPT_DEFAULT_VERSION}" ] && virtualenv_prompt_info
        else
            virtualenv_prompt_info
        fi
    fi
}

prompt_setup_pygmalion(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}:%{$reset_color%}%{$fg[blue]%}(%{$fg[cyan]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg_bold[magenta]%}✗"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

  venvinfo="%{$fg[magenta]%}$(_virtualenv_prompt_info)%{$reset_color%}"
  base_prompt='%{$fg[yellow]%}%2~%{$reset_color%}'
  post_prompt='%{$fg[red]%} |%{$reset_color%}%{$fg[cyan]%} ➜%{$reset_color%} '

  precmd_functions+=(prompt_pygmalion_precmd)
}

prompt_pygmalion_precmd(){
  local gitinfo=$(git_prompt_info)
  PROMPT="$venvinfo $base_prompt$gitinfo$post_prompt"
}

prompt_setup_pygmalion


