#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#source $HOME/.local/bin/virtualenvwrapper.sh


stheme="source $ZSH_CUSTOM/$ZSH_THEME.zsh-theme"

# note: '-n string' evaluates to true if length of 'string' is non-zero
workon() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    deactivate
  fi
  source $HOME/.virtualenvs/$1/bin/activate
  eval "$stheme"
}

workoff() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    deactivate
  else
    echo "But you aren't in a virtual environment!"
  fi
  eval "$stheme"
}

alias deactiv='workoff'

#source $HOME/.virtualenvs/v3.6/bin/activate
# Activate v3.8 virtual env, unless already set to v3.6
#if [[ $(basename "$VIRTUAL_ENV") != "v3.6"  ]]; then
  #source $HOME/.virtualenvs/v3.8/bin/activate
#fi

eval "$stheme"
