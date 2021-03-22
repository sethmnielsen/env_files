# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=8000
SAVEHIST=8000
setopt appendhistory autocd extendedglob nomatch
setopt rmstarsilent
unsetopt beep notify
zstyle :compinstall filename '~/.zshrc'
zmodload -i zsh/complist


##### oh-my-zsh #####
export ZSH="$HOME/.oh-my-zsh"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM=~/env/oh-my-zsh
ZSH_THEME="seth-pygmalion"
ZSH_COMPDUMP="${HOME}/.cache/zsh/.zcompdump-${HOST/.*/}-${ZSH_VERSION}"
#CASE_SENSITIVE="true"

# tmux
if [[ "${TERM_PROGRAM}" != "vscode" ]]; then
    export ZSH_TMUX_AUTOSTART="true"
fi
export ZSH_TMUX_CONFIG=~/env/.tmux.conf
export ZSH_TMUX_AUTOCONNECT="false"
export ZSH_TMUX_AUTOQUIT="false"
export ZSH_TMUX_FIXTERM="false"

plugins=(
  cargo
  git
  tmux
  forgit
  zsh-vim-mode
  virtualenv-seth 
)

source $ZSH/oh-my-zsh.sh
unset -f upgrade_oh_my_zsh

# Keybindings
bindkey '^P' up-line-or-beginning-search
bindkey '^N' down-line-or-beginning-search
bindkey '^D' delete-char
bindkey '^Y' menu-expand-or-complete
bindkey '^Xl' clear-screen
#bindkey -M menuselect '^M' .accept-line

# Other dotfiles
source ~/env/.environment
source ~/.rosrc
source ~/env/zsh/.aliasrc
source ~/env/zsh/.myvirtenvrc.zsh

# fzf
[ -f ~/env/fzf.zsh ] && source ~/env/fzf.zsh


compdef vman="man"


zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'
