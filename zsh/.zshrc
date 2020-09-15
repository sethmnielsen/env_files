# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=8000
SAVEHIST=8000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

# End of lines added by compinstall




##### Added by me #####
#export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

export DEFAULT_USER=seth  # for shortening prompt
export MYVIMRC=~/env/.vimrc
export VIMINIT='source $MYVIMRC'
export EDITOR=/usr/bin/vim
export RANGER_LOAD_DEFAULT_RC="false"
export RMVIEW_CONF=~/.config/rmview/rmview.json

# PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=/usr/lib:$LD_LIBRARY_PATH
#export PATH=$PATH:~/dev/UnrealEngine/Engine/Binaries/Linux
export PATH=$PATH:$HOME/software/blender
export QT_QPA_PLATFORMTHEME=qt5ct

# HOLODECK
#export HOLODECKPATH=~/.local/share/holodeck-0.2.2dev

#### SETTING PYTHONPATH ####
#export PYTHONPATH=~/dev/boat_landing_sim/src/rosflight_holodeck/python/holodeck/src

# Rust
export RUST_LOG=info
export RUSTFLAGS="$RUSTFLAGS -A unused_imports"
export JAX_ENABLE_X64="true"
export TF_CPP_MIN_LOG_LEVEL="2"

# For autocomplete-python to work correctly
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#eval "$(register-python-argcomplete /path/to/the/to/be/completed/file1)"

##### oh-my-zsh #####

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


CASE_SENSITIVE="true"
#zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM=~/env/oh-my-zsh
ZSH_THEME="seth-pygmalion"
ZSH_COMPDUMP="${HOME}/.cache/zsh/.zcompdump-${HOST/.*/}-${ZSH_VERSION}"

# tmux
export ZSH_TMUX_CONFIG=~/env/.tmux.conf
export ZSH_TMUX_AUTOSTART="true"
export ZSH_TMUX_AUTOCONNECT="false"
export ZSH_TMUX_AUTOQUIT="false"
export ZSH_TMUX_FIXTERM="false"


plugins=(
  cargo
  git
  tmux
  forgit
)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Keybindings
bindkey '^P' up-line-or-beginning-search
bindkey '^N' down-line-or-beginning-search
bindkey '^D' delete-char
bindkey '^Y' menu-expand-or-complete

# ROS
# sourcing this will override virtualenv to be 'v3.6' (python 3.6)
source ~/.rosrc

source ~/env/zsh/.aliasrc

# fzf
[ -f ~/env/fzf.zsh ] && source ~/env/fzf.zsh

TERM=alacritty
