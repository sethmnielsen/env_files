export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source $HOME/.local/bin/virtualenvwrapper.sh


stheme="source $HOME/.oh-my-zsh/custom/themes/seth-theme.zsh-theme"

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

if [[ $(basename "$VIRTUAL_ENV") != "v3.6"  ]]; then
  source $HOME/.virtualenvs/v3.8/bin/activate
fi

eval "$stheme"
