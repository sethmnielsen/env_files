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

#TERM=alacritty
export DEFAULT_USER=seth  # for shortening prompt
export VIMINIT='source $MYVIMRC'
export MYVIMRC=~/env/.vimrc
export EDITOR=vim
export RANGER_LOAD_DEFAULT_RC="false"

# PATH
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}  # CUDA
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/opencv/lib
#export PATH=$PATH:~/.local/share/fonts
#export PATH=$PATH:~/dev/UnrealEngine/Engine/Binaries/Linux
#export PATH=~/.npm-global/bin:$PATH
#export PATH=/usr/local/opencv/bin:$PATH
export PATH=$PATH:/usr/local/opencv/bin
export PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH

############################################################################################
#export QT_QPA_PLATFORMTHEME=qt5ct   # HEEEYYYY LOOK AT THISSSSSSS
############################################################################################

# HOLODECK
#export HOLODECKPATH=~/.local/share/holodeck-0.2.2dev

#### SETTING PYTHONPATH ####
#export PYTHONPATH=~/dev/boat_landing_sim/src/rosflight_holodeck/python/holodeck/src
#export PYTHONPATH=/usr/local/opencv/lib/python3.6/dist-packages:$PYTHONPATH

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

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

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
  virtualenv-seth
  forgit
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Other custom stuff

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

if [[ "$(hostname)" != "zepharch" ]]; then
    # virtualenv -- this needs to be done after sourcing oh-my-zsh.sh
    source ~/env/zsh/.myvirtenvrc.zsh

    # pip
    eval "`pip completion --zsh`"
    compctl -K _pip_completion pip3
fi
