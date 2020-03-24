# Lines configured by zsh-newuser-install
HISTFILE=/home/seth/.histfile
HISTSIZE=8000
SAVEHIST=8000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/seth/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall




##### Added by me #####

export DEFAULT_USER=seth  # for shortening prompt
export MYVIMRC=/home/seth/.vimrc
export EDITOR=vim
export RANGER_LOAD_DEFAULT_RC="false"
export RANGER_COLORSCHEME="unixontherocks"
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}  # CUDA
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export PATH=$PATH:/home/seth/.local/share/fonts
export PATH=$PATH:/home/seth/dev/UnrealEngine/Engine/Binaries/Linux
export PATH=/home/seth/.npm-global/bin:$PATH
export PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH
#export PATH=/usr/local/opencv/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/opencv/lib

export QT_QPA_PLATFORMTHEME=qt5ct

# HOLODECK 
#export HOLODECKPATH=/home/seth/.local/share/holodeck-0.2.2dev

#### SETTING PYTHONPATH ####
export PYTHONPATH=/home/seth/dev/boat_landing_sim/src/rosflight_holodeck/python/holodeck/src
#export PYTHONPATH=$PYTHONPATH:/home/seth/software/SageMath/src/sage
#export PYTHONPATH=$PYTHONPATH:/home/seth/software/SageMath/local/lib/python3.7/site-packages/sage

#export PYTHONPATH=/home/seth/school/autonomous_systems/turtlebot_sim:$PYTHONPATH  
#export PYTHONPATH=$PYTHONPATH:/home/seth/dev/coco_dataset/cocoapi
#export PYTHONPATH=$PYTHONPATH:/home/seth/dev/models/research:/home/seth/dev/models/research/slim  # tensorflow
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
export ZSH="/home/seth/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="pygmalion-virtualenv"
ZSH_THEME="seth-theme"
#ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"
zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'
autoload -U compinit && compinit

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  cargo
  git
  tmux-seth
  pip
  virtualenv
#  zsh-interactive-cd
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
export SSH_KEY_PATH="/home/seth/.ssh/rsa_id"

# Other custom stuff 

# ranger prompt
#if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

#setopt rmstarsilent

# Keybindings
bindkey "^P" up-line-or-beginning-search 
bindkey "^N" down-line-or-beginning-search 

source /home/seth/.aliasrc

# fzf
source /home/seth/.fzf.zsh
export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion

# virtualenv -- this needs to be done after sourcing oh-my-zsh.sh
source /home/seth/.myvirtenvrc

# ROS - sourcing this will override virtualenv to be 'default' (python 3.6)
#source /home/seth/.rosrc
