function virtualenv_prompt_info(){
  if [[ -n ${VIRTUAL_ENV} ]]; then
      echo "${ZSH_THEME_VIRTUALENV_PREFIX:=(}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=)}"
  fi
}

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=0
